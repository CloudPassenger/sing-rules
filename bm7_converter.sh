#!/usr/bin/env bash

set -euo pipefail

if [ "$#" -ne 2 ]; then
	echo "Usage: $0 <source-directory> <output-directory>" >&2
	exit 1
fi

source_dir=$1
output_dir=$2
converter_path="./sing-rules-converter"

if [ ! -d "$source_dir" ]; then
	echo "Source directory does not exist: $source_dir" >&2
	exit 1
fi

if [ ! -x "$converter_path" ]; then
	echo "Converter binary is missing or not executable: $converter_path" >&2
	exit 1
fi

mkdir -p "$output_dir"

echo "🔍 Searching for Rule files..."
find "$source_dir" -type f -name '*.yaml' ! -name '*_No_Resolve.yaml' ! -name '*_Domain.yaml' ! -name '*_IP.yaml' ! -name '*_IP_No_IPv6.yaml' -print0 | while IFS= read -r -d '' file_path; do
	output_file_path="${output_dir}${file_path#$source_dir}"
	output_file_dir=$(dirname "$output_file_path")
	output_file_path_without_suffix="${output_file_path%.yaml}"

	if [ ! -d "$output_file_dir" ]; then
		mkdir -p "$output_file_dir"
	fi

	echo "🔨 Converting: $file_path"
	"$converter_path" "$file_path" -m -o "$output_file_path_without_suffix" -v 3
done

echo "✨ Conversion completed!"

echo "📄 Copying README files..."
find "$source_dir" -type f -name 'README.md' -print0 | while IFS= read -r -d '' readme_path; do
	output_readme_path="${output_dir}${readme_path#$source_dir}"
	output_readme_dir=$(dirname "$output_readme_path")

	if [ ! -d "$output_readme_dir" ]; then
		mkdir -p "$output_readme_dir"
	fi

	cp "$readme_path" "$output_readme_path"

	sed -i -e 's/^# 🧸/# 🦙/' \
		-e '/^分流规则是互联网公共服务/,/^$/d' \
		-e '/确保在使用过程中符合相关法律法规。$/,/^$/d' \
		-e '/^## Clash/,/^##\s.*$/{//!d;}' \
		-e '/^## Clash/d' "$output_readme_path"

	echo "📝 Formatting: $readme_path"

done

echo "📝 Formatting: README.md"
output_root_readme="$output_dir/README.md"
if [ -f "$output_root_readme" ]; then
	sed -i 's|https://github.com/blackmatrix7/ios_rule_script/tree/master/rule/Clash/|https://github.com/CloudPassenger/sing-rules/tree/ruleset/|g' "$output_root_readme"
fi

echo "🎉 All files copied!"
