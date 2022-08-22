#引用(op)
execute if score awd_mx-gongjuren_tick awd_mx-tick matches 10 run function awd_mx-fuzhuxitong:guanli/awd_mx-op
execute if score awd_mx-gongjuren_tick awd_mx-tick matches 20 run function awd_mx-fuzhuxitong:guanli/awd_mx-op
#引用(欢迎UI)
execute if score awd_mx-gongjuren_tick awd_mx-tick matches 1 run function awd_mx-fuzhuxitong:guanli/awd_mx-op_huanying_ui
#引用(模式管理)
function awd_mx-fuzhuxitong:guanli/awd_mx-op_moshi
#菜单
execute at @a if entity @e[type=minecraft:snowball,distance=..1] at @p run trigger awd_mx-caidan set 1