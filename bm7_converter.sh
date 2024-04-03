#!/bin/bash

# 检查是否提供了足够的参数
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <source-directory> <output-directory>"
    exit 1
fi

# 读取并赋值输入参数
source_dir=$1
output_dir=$2

# 检查源目录是否存在
if [ ! -d "$source_dir" ]; then
    echo "Source directory does not exist."
    exit 1
fi

# 使用 find 命令查找所有 .yaml 文件，排除不支持的规则模式
# -not -name 指定排除的文件名模式
# while IFS= 读取 find 的输出
echo "🔍 Searching for Rule files..."
find "$source_dir" -type f -name '*.yaml' ! -name '*_No_Resolve.yaml' ! -name '*_Domain.yaml' ! -name '*_IP.yaml' ! -name '*_IP_No_IPv6.yaml' | while IFS= read -r file_path; do
    # 构造输出文件的路径
    output_file_path="${output_dir}${file_path#$source_dir}"
    output_file_dir=$(dirname "$output_file_path")

    # 检查输出文件的目录是否存在，如果不存在则创建
    if [ ! -d "$output_file_dir" ]; then
        mkdir -p "$output_file_dir"
    fi

    # 执行转换命令
    echo "🔨 Converting: $file_path"
    ./sing-srs-converter "$file_path" -m -o "$output_file_path"
done

echo "✨ Conversion completed!"

# 再次使用 find 命令查找所有 README.md 文件
# 并将它们复制到输出文件夹的相应目录下
echo "📄 Copying README files..."
find "$source_dir" -type f -name 'README.md' | while IFS= read -r readme_path; do
    # 构造输出文件的路径
    output_readme_path="${output_dir}${readme_path#$source_dir}"
    output_readme_dir=$(dirname "$output_readme_path")

    # 检查输出文件的目录是否存在，如果不存在则创建
    if [ ! -d "$output_readme_dir" ]; then
        mkdir -p "$output_readme_dir"
    fi

    # 复制 README.md 文件
    cp "$readme_path" "$output_readme_path"

    # 使用 sed 对 README.md 文件进行文本处理
    # -i 表示直接修改文件内容
    # -e 后跟 sed 的脚本命令
    sed -i -e 's/^# 🧸/# 🦙/' \
           -e '/^分流规则是互联网公共服务/,/^$/d' \
           -e '/确保在使用过程中符合相关法律法规。$/,/^$/d' \
           -e '/^## Clash/,/^##\s.*$/{//!d;}' \
           -e '/^## Clash/d' "$output_readme_path"

    echo "📝 Formatting: $readme_path"

done

# 修改输出根目录下的 README.md 文件中的 URL
echo "📝 Formatting: README.md"
output_root_readme="$output_dir/README.md"
if [ -f "$output_root_readme" ]; then
    sed -i 's|https://github.com/blackmatrix7/ios_rule_script/tree/master/rule/Clash/|https://github.com/CloudPassenger/sing-rules/tree/ruleset/|g' "$output_root_readme"
fi

echo "🎉 All files copied!"