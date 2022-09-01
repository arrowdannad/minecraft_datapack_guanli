#将盔甲架2的tag顶在头上（此时的tag已经是排序后的了）
data modify entity 58c6c35b-0000-0001-0000-000100000002 CustomName set from block 1489421 200 14700108 LastOutput

#在告示牌中拼接字符串，储存排序前字符串的顺序("a, b, c" + ", " + 源数据 + 正在猜的数据)
data modify block 1489421 200 14700102 Text1 set value '[{"nbt":"LastOutput","block":"1489421 200 14700107","interpret": true},{"text":", "},{"nbt":"LastOutput","block":"1489421 200 14700105"},{"text":", "},{"nbt":"LastOutput","block":"1489421 200 14700106"}]'

#将排序前的tag顶在盔甲架1的头上
data modify entity 58c6c35b-0000-0001-0000-000100000001 CustomName set from block 1489421 200 14700102 Text1

#再次压扁字符串
setblock 1489421 200 14700109 minecraft:command_block{auto:1,Command:"enchant 58c6c35b-0000-0001-0000-000100000001 minecraft:aqua_affinity"} destroy
setblock 1489421 200 14700110 minecraft:command_block{auto:1,Command:"enchant 58c6c35b-0000-0001-0000-000100000002 minecraft:aqua_affinity"} destroy

schedule function hjrt:string_cycle/9 2t append