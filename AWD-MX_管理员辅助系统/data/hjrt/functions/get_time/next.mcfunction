#重置
scoreboard players set #hjrt_time_min hjrt_num 0
scoreboard players set #hjrt_time_max hjrt_num 10

#储存前缀
data modify storage hjrt:string guess_before set from block 1489421 200 14700111 Text1

#写下前缀和要猜的数
data modify block 1489421 200 14700111 Text1 set value '[{"storage":"hjrt:string","nbt":"guess_before","interpret": true},{"storage":"hjrt:string","nbt":"time_int[0]"}]'

#猜它
function hjrt:get_time/run