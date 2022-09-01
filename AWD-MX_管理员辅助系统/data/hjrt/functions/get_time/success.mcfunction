#停止计时
schedule clear hjrt:get_time/gone_time

#计算当前时间（单位：s）
execute store result score #hjrt_time_1 hjrt_num run data get storage hjrt:string time_int_success[0] 1
execute store result score #hjrt_time_2 hjrt_num run data get storage hjrt:string time_int_success[1] 1
scoreboard players operation #hjrt_time_hour hjrt_num = #hjrt_time_1 hjrt_num
scoreboard players operation #hjrt_time_hour hjrt_num *= #hjrt_num_10 hjrt_num
scoreboard players operation #hjrt_time_hour hjrt_num += #hjrt_time_2 hjrt_num
scoreboard players operation #hjrt_time_hour hjrt_num *= #hjrt_num_3600 hjrt_num

execute store result score #hjrt_time_3 hjrt_num run data get storage hjrt:string time_int_success[2] 1
execute store result score #hjrt_time_4 hjrt_num run data get storage hjrt:string time_int_success[3] 1
scoreboard players operation #hjrt_time_minute hjrt_num = #hjrt_time_3 hjrt_num
scoreboard players operation #hjrt_time_minute hjrt_num *= #hjrt_num_10 hjrt_num
scoreboard players operation #hjrt_time_minute hjrt_num += #hjrt_time_4 hjrt_num
scoreboard players operation #hjrt_time_minute hjrt_num *= #hjrt_num_60 hjrt_num

execute store result score #hjrt_time_5 hjrt_num run data get storage hjrt:string time_int_success[4] 1
execute store result score #hjrt_time_6 hjrt_num run data get storage hjrt:string time_int_success[5] 1
scoreboard players operation #hjrt_time_second hjrt_num = #hjrt_time_5 hjrt_num
scoreboard players operation #hjrt_time_second hjrt_num *= #hjrt_num_10 hjrt_num
scoreboard players operation #hjrt_time_second hjrt_num += #hjrt_time_6 hjrt_num

scoreboard players operation #hjrt_time_now hjrt_num = #hjrt_time_hour hjrt_num
scoreboard players operation #hjrt_time_now hjrt_num += #hjrt_time_minute hjrt_num
scoreboard players operation #hjrt_time_now hjrt_num += #hjrt_time_second hjrt_num
scoreboard players operation #hjrt_time_now hjrt_num += #hjrt_gone_time hjrt_num

#清除命令方块和盔甲架
fill 1489421 200 14700101 1489421 200 14700111 air replace
kill 58c6c35b-0000-0001-0000-000100000001
kill 58c6c35b-0000-0001-0000-000100000002

#卸载区块
forceload remove 1489421 14700101 1489421 14700111

#如果时间>86500就极有可能是时间获取错误，需要重新获取
execute if score #hjrt_time_now hjrt_num matches 86500.. run function hjrt:get_time/error
execute unless score #hjrt_time_now hjrt_num matches 86500.. run function hjrt:get_time/success2