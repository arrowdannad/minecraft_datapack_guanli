#猜下一个数
execute if score #hjrt_time_1 hjrt_num matches 8 run scoreboard players set #hjrt_time_1 hjrt_num 9
execute if score #hjrt_time_1 hjrt_num matches 6 run scoreboard players set #hjrt_time_1 hjrt_num 8
execute if score #hjrt_time_1 hjrt_num matches 5 run scoreboard players set #hjrt_time_1 hjrt_num 7
execute if score #hjrt_time_1 hjrt_num matches 3 run scoreboard players set #hjrt_time_1 hjrt_num 6
execute if score #hjrt_time_1 hjrt_num matches 1 run scoreboard players set #hjrt_time_1 hjrt_num 2

execute store result storage hjrt:string time_int[0] int 1 run scoreboard players get #hjrt_time_1 hjrt_num
data modify block 1489421 200 14700111 Text1 set value '[{"storage":"hjrt:string","nbt":"guess_before","interpret":true},{"storage":"hjrt:string","nbt":"time_int[0]"}]'

function hjrt:get_time/run