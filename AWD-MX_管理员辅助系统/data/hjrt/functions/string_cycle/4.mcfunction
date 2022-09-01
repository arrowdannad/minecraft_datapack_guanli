#清空盔甲架的名字
data modify entity 58c6c35b-0000-0001-0000-000100000001 CustomName set value ''
data modify entity 58c6c35b-0000-0001-0000-000100000002 CustomName set value ''

#给盔甲架加奇怪的tag，保证tag数量一样控制变量
tag 58c6c35b-0000-0001-0000-000100000001 add a
tag 58c6c35b-0000-0001-0000-000100000001 add b
tag 58c6c35b-0000-0001-0000-000100000001 add c
data modify entity 58c6c35b-0000-0001-0000-000100000002 Tags append from block 1489421 200 14700105 LastOutput
data modify entity 58c6c35b-0000-0001-0000-000100000002 Tags append from block 1489421 200 14700106 LastOutput
data modify entity 58c6c35b-0000-0001-0000-000100000002 Tags append value 'a, b, c'

#输出盔甲架1（用来对照的盔甲架）的tag
setblock 1489421 200 14700107 minecraft:command_block{auto:1,Command:"tag 58c6c35b-0000-0001-0000-000100000001 list"} destroy
#输出盔甲架2（用来排序的盔甲架）的tag
setblock 1489421 200 14700108 minecraft:command_block{auto:1,Command:"tag 58c6c35b-0000-0001-0000-000100000002 list"} destroy

schedule function hjrt:string_cycle/6 2t append