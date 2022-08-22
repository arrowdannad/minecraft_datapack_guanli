scoreboard players operation #hjrt_is_updated hjrt_num = #hjrt_time_now hjrt_num
scoreboard players operation #hjrt_is_updated hjrt_num %= #hjrt_update hjrt_num
execute if score #hjrt_is_updated hjrt_num matches 0 run function hjrt:reload