#计算时间(第一天是day0)
execute store result score #hjrt_weather_time hjrt_num run time query day
execute store result score #hjrt_weather_cycle hjrt_num run data get storage hjrt:weather cycle 1
scoreboard players operation #hjrt_weather_time hjrt_num %= #hjrt_weather_cycle hjrt_num
scoreboard players operation #hjrt_weather_time hjrt_num *= #hjrt_num_86400 hjrt_num
scoreboard players operation #hjrt_weather_time hjrt_num += #hjrt_time_now hjrt_num

#复制event列表
data modify storage hjrt:weather event_copy set from storage hjrt:weather event

#重置
scoreboard players set #hjrt_weather_testfor hjrt_num 0

#如果有event就进入循环
execute if data storage hjrt:weather event_copy[0] run function hjrt:weather_change/cycle

#都不在区间内时就是晴天
execute if score #hjrt_weather_testfor hjrt_num matches 0 unless score #hjrt_weather_now hjrt_num matches 0 run function hjrt:weather_change/clear