#下一个要猜第几个数
scoreboard players add #hjrt_time hjrt_num 1

#tellraw @a [{"text":"此数为 "},{"score":{"name":"#hjrt_time_1","objective":"hjrt_num"}}]

#将score转化为storage
execute store result storage hjrt:string time_int[0] int 1 run scoreboard players get #hjrt_time_1 hjrt_num

#存到time_int_success中
data modify storage hjrt:string time_int_success append from storage hjrt:string time_int[0]

#删除已经猜中的数
data remove storage hjrt:string time_int[0]

#在告示牌中写下下一个要猜的数的前缀（如果要猜第3个数或第5个数时就在前面加个":"号）
data modify block 1489421 200 14700111 Text1 set value '[{"storage":"hjrt:string","nbt":"guess_before","interpret": true},{"score":{"name":"#hjrt_time_1","objective":"hjrt_num"}},{"text":":"}]'
execute unless score #hjrt_time hjrt_num matches 3 unless score #hjrt_time hjrt_num matches 5 run data modify block 1489421 200 14700111 Text1 set value '[{"storage":"hjrt:string","nbt":"guess_before","interpret": true},{"score":{"name":"#hjrt_time_1","objective":"hjrt_num"}}]'

#猜下一个数，如果猜完6个数就停止，并且继续下一步
execute if data storage hjrt:string time_int[0] run function hjrt:get_time/next
execute unless data storage hjrt:string time_int[0] run function hjrt:get_time/success