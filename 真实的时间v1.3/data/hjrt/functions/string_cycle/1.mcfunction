#没有盔甲架就生成盔甲架
execute unless entity 58c6c35b-0000-0001-0000-000100000001 run summon minecraft:armor_stand 1489421 200 14700103 {UUID:[I;1489421147,1,1,1],CustomNameVisible:1,NoGravity:1}
execute unless entity 58c6c35b-0000-0001-0000-000100000002 run summon minecraft:armor_stand 1489421 200 14700104 {UUID:[I;1489421147,1,1,2],CustomNameVisible:1,NoGravity:1}

#源数据放到盔甲架1头上
data modify entity 58c6c35b-0000-0001-0000-000100000001 CustomName set from block 1489421 200 14700101 LastOutput
#正在猜的数据放到盔甲架2头上
data modify entity 58c6c35b-0000-0001-0000-000100000002 CustomName set from storage hjrt:string guess

#放个告示牌
fill 1489421 200 14700102 1489421 200 14700102 minecraft:oak_sign replace

#压扁两个盔甲架的名字(即简化字符串(例: 将'{"text":"114514","color":"red"}'简化为"114514"))
setblock 1489421 200 14700105 minecraft:command_block{auto:1,Command:"enchant 58c6c35b-0000-0001-0000-000100000001 minecraft:aqua_affinity"} destroy
setblock 1489421 200 14700106 minecraft:command_block{auto:1,Command:"enchant 58c6c35b-0000-0001-0000-000100000002 minecraft:aqua_affinity"} destroy

#先清空盔甲架的tag
data modify entity 58c6c35b-0000-0001-0000-000100000001 Tags set value []
data modify entity 58c6c35b-0000-0001-0000-000100000002 Tags set value []

#有用到命令方块的需要等2t才可以，不然会有bug
schedule function hjrt:string_cycle/4 2t append