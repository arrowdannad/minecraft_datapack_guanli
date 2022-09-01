#修改区间
scoreboard players operation #hjrt_time_min hjrt_num = #hjrt_time_1 hjrt_num

#若最大值和最小值的差为1，则表示已猜中，最小值即为实际数字
scoreboard players operation #hjrt_time_dt hjrt_num = #hjrt_time_max hjrt_num
scoreboard players operation #hjrt_time_dt hjrt_num -= #hjrt_time_min hjrt_num
execute if score #hjrt_time_dt hjrt_num matches 1 run scoreboard players operation #hjrt_time_1 hjrt_num = #hjrt_time_min hjrt_num
execute if score #hjrt_time_dt hjrt_num matches 1 run function hjrt:string_cycle/true

#若差不为1，则继续猜
execute unless score #hjrt_time_dt hjrt_num matches 1 run function hjrt:string_cycle/false_1