# 🦙 ProxyLite

## 前言

![](https://shields.io/badge/-移除重复规则-ff69b4) ![](https://shields.io/badge/-移除无法解析的域名-important) ![](https://shields.io/badge/-DOMAIN与DOMAIN--SUFFIX合并-green) ![](https://shields.io/badge/-DOMAIN--SUFFIX间合并-critical) ![](https://shields.io/badge/-DOMAIN与DOMAIN--KEYWORD合并-9cf) ![](https://shields.io/badge/-DOMAIN--SUFFIX与DOMAIN--KEYWORD合并-blue) ![](https://shields.io/badge/-IP--CIDR(6)合并-blueviolet) 

ProxyLite规则由《RULE GENERATOR 规则生成器》自动生成。

## 规则说明
对比Proxy，ProxyLite移除无法访问的域名，排除广告、苹果、微软和谷歌的规则，便于搭配使用。

## 规则统计

最后更新时间：2024-04-19 02:11:52

各类型规则统计：
| 类型 | 数量(条)  | 
| ---- | ----  |
| DOMAIN | 23  | 
| DOMAIN-KEYWORD | 22  | 
| DOMAIN-SUFFIX | 843  | 
| IP-CIDR | 89  | 
| IP-CIDR6 | 4  | 
| TOTAL | 981  | 


## 子规则/排除规则


当前分流规则，未包含其他子规则。

当前分流规则，已排除以下规则：
| 排除规则  |  |  |  |  | 
| ---- | ---- | ---- | ---- | ----  |
| Advertising | AppStore | Apple | AppleDaily | AppleMail  | 
| AppleMusic | AppleNews | AppleProxy | AppleTV | China  | 
| ChinaIPs | Chromecast | FindMy | FitnessPlus | GitHub  | 
| Google | GoogleDrive | GoogleSearch | GoogleVoice | Microsoft  | 
| OneDrive | OpenAI | Siri | SystemOTA | Teams  | 
| TestFlight | YouTube | YouTubeMusic | iCloud | iCloudPrivateRelay  | 

## 数据来源

《ProxyLite》的数据来自以下链接，如与本项目的《ProxyLite》规则混合使用，可能会造成规则大量重复。

- https://raw.githubusercontent.com/DivineEngine/Profiles/master/Surge/Ruleset/Global.list
- https://raw.githubusercontent.com/ACL4SSR/ACL4SSR/master/Clash/ProxyLite.list
- https://raw.githubusercontent.com/GeQ1an/Rules/master/QuantumultX/Filter/Outside.list
- https://raw.githubusercontent.com/dler-io/Rules/main/Clash/Provider/Proxy.yaml


感谢以上规则作者的辛勤付出（排名不分先后）。

## 最后

### 感谢

[@fiiir](https://github.com/fiiir) [@Tartarus2014](https://github.com/Tartarus2014) [@zjcfynn](https://github.com/zjcfynn) [@chenyiping1995](https://github.com/chenyiping1995) [@vhdj](https://github.com/vhdj)

提供规则数据源及改进建议。

### 其他

请不要对外宣传本项目。