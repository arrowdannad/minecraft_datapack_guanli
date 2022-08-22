#数据包时间刻
execute if score awd_mx-gongjuren_tick awd_mx-tick matches 20.. run scoreboard players set awd_mx-gongjuren_tick awd_mx-tick 0
scoreboard players add awd_mx-gongjuren_tick awd_mx-tick 1
#调用时间校准模块
function awd_mx-fuzhuxitong:mokuai/awd_mx-shijian_jiaozhun
#OP管理模块
execute at @a[name="awd_mx-gongjuren_fuzhu",scores={awd_mx-shiming_nianling=1}] run function awd_mx-fuzhuxitong:guanli/awd_mx-op_install
#未成年认证模块
scoreboard players set @a[scores={awd_mx-register=1..}] awd_mx-tick 0
scoreboard players set @a[scores={awd_mx-register=1..}] awd_mx-tick_shi 0
scoreboard players set @a[scores={awd_mx-register=1..}] awd_mx-tick_fen 0
scoreboard players set @a[scores={awd_mx-register=1..}] awd_mx-tick_miao 0
#实名认证主函数
function awd_mx-fuzhuxitong:shimingrenzheng/awd_mx-shiming_install
#登录控制
scoreboard players set @a[scores={awd_mx-register=1..}] awd_mx-register 0
#服主认证
execute at @a[name="awd_mx-gongjuren_fuzhu",tag=!awd_mx-fuzhu] run function awd_mx-fuzhuxitong:chushihua/awd_mx-chushihua_fuzhu
