# 🦙 去广告测试版

## 前言

![](https://shields.io/badge/-移除重复规则-ff69b4) ![](https://shields.io/badge/-移除无法解析的域名-important) ![](https://shields.io/badge/-DOMAIN与DOMAIN--SUFFIX合并-green) ![](https://shields.io/badge/-DOMAIN--SUFFIX间合并-critical) ![](https://shields.io/badge/-DOMAIN与DOMAIN--KEYWORD合并-9cf) ![](https://shields.io/badge/-DOMAIN--SUFFIX与DOMAIN--KEYWORD合并-blue) ![](https://shields.io/badge/-IP--CIDR(6)合并-blueviolet) ![](https://shields.io/badge/-MITM--HOSTNAME合并-brightgreen) 

去广告测试版规则由《RULE GENERATOR 规则生成器》自动生成。

## 规则说明
测试版的去广告规则。

会将所有已知的去广告规则作为数据源，不考虑APP承受能力，不考虑误拦截的问题。

也无法处理任何关于误拦截的反馈。

如无必要，非常不建议使用，可能会有严重的副作用。

## 规则统计

最后更新时间：2025-06-10 02:06:13

各类型规则统计：
| 类型 | 数量(条)  | 
| ---- | ----  |
| DOMAIN | 13081  | 
| DOMAIN-KEYWORD | 279  | 
| DOMAIN-SUFFIX | 187456  | 
| IP-CIDR | 507  | 
| IP-CIDR6 | 3  | 
| TOTAL | 201326  | 


## 子规则/排除规则

当前分流规则，已包含以下子规则，除非特殊需求否则不建议重复引用：
| 子规则  |  |  |  |  | 
| ---- | ---- | ---- | ---- | ----  |
| AdGuardSDNSFilter | Advertising | AdvertisingLite | AdvertisingMiTV | EasyPrivacy  | 
| Hijacking | Privacy  |  |  |  | 


## 数据来源

《去广告测试版》的数据来自以下链接，如与本项目的《去广告测试版》规则混合使用，可能会造成规则大量重复。

- https://raw.githubusercontent.com/ACL4SSR/ACL4SSR/master/Clash/BanAD.list
- https://raw.githubusercontent.com/NobyDa/ND-AD/master/Surge/AD_Block.txt
- https://raw.githubusercontent.com/NobyDa/Script/master/Surge/AdRule.list
- https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/source/rule/Advertising/Advertising.list
- https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/source/rule/Advertising/LianXiangJia/LianXiangJia.list
- https://raw.githubusercontent.com/scomper/surge-list/master/reject.list
- https://raw.githubusercontent.com/scomper/surge-list/master/adblock.list
- https://raw.githubusercontent.com/ACL4SSR/ACL4SSR/master/Clash/BanEasyList.list
- https://raw.githubusercontent.com/ACL4SSR/ACL4SSR/master/Clash/BanEasyListChina.list
- https://raw.githubusercontent.com/ACL4SSR/ACL4SSR/master/Clash/BanProgramAD.list
- https://raw.githubusercontent.com/limbopro/Adblock4limbo/main/Adblock4limbo.list
- https://raw.githubusercontent.com/Hackl0us/SS-Rule-Snippet/master/Rulesets/Surge/Custom/ad-domains.list
- https://raw.githubusercontent.com/Hackl0us/SS-Rule-Snippet/master/Rulesets/Surge/Custom/video-ad.list
- https://raw.githubusercontent.com/an0na/R/master/Filter/AdBlock.list
- https://raw.githubusercontent.com/sve1r/Rules-For-Quantumult-X/develop/Rules/Advertising/AdReject.list
- https://raw.githubusercontent.com/sve1r/Rules-For-Quantumult-X/develop/Rules/Advertising/Hijacking.list
- https://raw.githubusercontent.com/NobyDa/Script/master/QuantumultX/AdRuleTest.list
- https://raw.githubusercontent.com/NobyDa/Script/master/Surge/AdRuleTest.list
- https://raw.githubusercontent.com/geekdada/surge-list/master/domain-set/adaway.txt
- https://raw.githubusercontent.com/geekdada/surge-list/master/domain-set/base-filter.txt
- https://raw.githubusercontent.com/geekdada/surge-list/master/domain-set/chinese-filter.txt
- https://raw.githubusercontent.com/geekdada/surge-list/master/domain-set/neohosts-full.txt
- https://raw.githubusercontent.com/geekdada/surge-list/master/domain-set/tracking-protection-filter.txt
- https://raw.githubusercontent.com/Loyalsoldier/surge-rules/release/ruleset/reject.txt
- https://raw.githubusercontent.com/GeQ1an/Rules/master/QuantumultX/Filter/AdBlock.list
- https://raw.githubusercontent.com/sve1r/Rules-For-Quantumult-X/develop/Rules/Advertising/antiAD-V4.list
- https://raw.githubusercontent.com/sve1r/Rules-For-Quantumult-X/develop/Rules/Advertising/NormalApp/AppAdBlock.list
- https://raw.githubusercontent.com/ACL4SSR/ACL4SSR/master/Clash/BanEasyPrivacy.list
- https://raw.githubusercontent.com/geekdada/surge-list/master/domain-set/annoyances-filter.txt
- https://raw.githubusercontent.com/geekdada/surge-list/master/domain-set/social-media-filter.txt
- https://raw.githubusercontent.com/geekdada/surge-list/master/domain-set/dns-filter.txt
- https://raw.githubusercontent.com/mieqq/mieqq/master/In-AppTracker.txt
- https://raw.githubusercontent.com/yjqiang/surge_scripts/main/modules/hupu/hupu.sgmodule
- https://raw.githubusercontent.com/Loyalsoldier/clash-rules/release/reject.txt
- https://adguardteam.github.io/AdGuardSDNSFilter/Filters/filter.txt
- https://easylist-downloads.adblockplus.org/easyprivacy.txt
- https://raw.githubusercontent.com/LM-Firefly/Rules/master/Adblock/Adblock.list
- https://raw.githubusercontent.com/zqzess/rule_for_quantumultX/master/QuantumultX/rules/AdBlock.list
- https://raw.githubusercontent.com/fmz200/wool_scripts/main/QuantumultX/filter/fenliu.list


感谢以上规则作者的辛勤付出（排名不分先后）。

## 最后

### 感谢

[@fiiir](https://github.com/fiiir) [@Tartarus2014](https://github.com/Tartarus2014) [@zjcfynn](https://github.com/zjcfynn) [@chenyiping1995](https://github.com/chenyiping1995) [@vhdj](https://github.com/vhdj)

提供规则数据源及改进建议。

### 其他

请不要对外宣传本项目。