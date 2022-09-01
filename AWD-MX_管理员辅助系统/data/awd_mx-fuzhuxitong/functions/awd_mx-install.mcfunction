#数据包时间刻
function awd_mx-fuzhuxitong:awd_mx-tick

#调用时间校准模块
execute if score awd_mx-gongjuren_tick awd_mx-tick_fen matches 1 if score awd_mx-gongjuren_tick awd_mx-tick matches 1 run function awd_mx-fuzhuxitong:mokuai/awd_mx-shijian_jiaozhun

#OP管理模块
execute if score awd_mx-gongjuren_tick awd_mx-tick matches 2 at @a run function awd_mx-fuzhuxitong:guanli/awd_mx-op_install

#实名认证主函数
execute if score awd_mx-gongjuren_tick awd_mx-tick matches 3 at @a run function awd_mx-fuzhuxitong:shimingrenzheng/awd_mx-shiming_install

#菜单模块
execute at @a if entity @e[type=minecraft:snowball,distance=..1] as @a run scoreboard players set @a awd_mx-caidan 1
execute if score awd_mx-gongjuren_tick awd_mx-tick matches 4 at @a[scores={awd_mx-caidan=1}] run function awd_mx-fuzhuxitong:caidan/awd_mx-caidan

#登录控制
scoreboard players set @a[scores={awd_mx-register=1..}] awd_mx-tick 0
scoreboard players set @a[scores={awd_mx-register=1..}] awd_mx-tick_shi 0
scoreboard players set @a[scores={awd_mx-register=1..}] awd_mx-tick_fen 0
scoreboard players set @a[scores={awd_mx-register=1..}] awd_mx-tick_miao 0
scoreboard players set @a[scores={awd_mx-register=1..}] awd_mx-register 0

#服主认证
execute if score awd_mx-gongjuren_fuzhu awd_mx-shiming_nianling matches 0 at @a[tag=!awd_mx-fuzhu] run function awd_mx-fuzhuxitong:chushihua/awd_mx-chushihua_fuzhu

