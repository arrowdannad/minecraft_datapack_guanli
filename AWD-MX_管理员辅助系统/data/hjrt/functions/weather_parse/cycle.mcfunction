#分离event
execute store result score #hjrt_weather_parse_from[0] hjrt_num run data get storage hjrt:weather event_real_copy[0].from[0]
execute store result score #hjrt_weather_parse_from[1] hjrt_num run data get storage hjrt:weather event_real_copy[0].from[1]
execute store result score #hjrt_weather_parse_from[2] hjrt_num run data get storage hjrt:weather event_real_copy[0].from[2]
execute store result score #hjrt_weather_parse_from[3] hjrt_num run data get storage hjrt:weather event_real_copy[0].from[3]

execute store result score #hjrt_weather_parse_to[0] hjrt_num run data get storage hjrt:weather event_real_copy[0].to[0]
execute store result score #hjrt_weather_parse_to[1] hjrt_num run data get storage hjrt:weather event_real_copy[0].to[1]
execute store result score #hjrt_weather_parse_to[2] hjrt_num run data get storage hjrt:weather event_real_copy[0].to[2]
execute store result score #hjrt_weather_parse_to[3] hjrt_num run data get storage hjrt:weather event_real_copy[0].to[3]

scoreboard players remove #hjrt_weather_parse_from[0] hjrt_num 1
scoreboard players operation #hjrt_weather_parse_from[0] hjrt_num *= #hjrt_num_86400 hjrt_num
scoreboard players operation #hjrt_weather_parse_from[1] hjrt_num *= #hjrt_num_3600 hjrt_num
scoreboard players operation #hjrt_weather_parse_from[2] hjrt_num *= #hjrt_num_60 hjrt_num
scoreboard players operation #hjrt_weather_parse_from hjrt_num = #hjrt_weather_parse_from[0] hjrt_num
scoreboard players operation #hjrt_weather_parse_from hjrt_num += #hjrt_weather_parse_from[1] hjrt_num
scoreboard players operation #hjrt_weather_parse_from hjrt_num += #hjrt_weather_parse_from[2] hjrt_num
scoreboard players operation #hjrt_weather_parse_from hjrt_num += #hjrt_weather_parse_from[3] hjrt_num

scoreboard players remove #hjrt_weather_parse_to[0] hjrt_num 1
scoreboard players operation #hjrt_weather_parse_to[0] hjrt_num *= #hjrt_num_86400 hjrt_num
scoreboard players operation #hjrt_weather_parse_to[1] hjrt_num *= #hjrt_num_3600 hjrt_num
scoreboard players operation #hjrt_weather_parse_to[2] hjrt_num *= #hjrt_num_60 hjrt_num
scoreboard players operation #hjrt_weather_parse_to hjrt_num = #hjrt_weather_parse_to[0] hjrt_num
scoreboard players operation #hjrt_weather_parse_to hjrt_num += #hjrt_weather_parse_to[1] hjrt_num
scoreboard players operation #hjrt_weather_parse_to hjrt_num += #hjrt_weather_parse_to[2] hjrt_num
scoreboard players operation #hjrt_weather_parse_to hjrt_num += #hjrt_weather_parse_to[3] hjrt_num

data modify storage hjrt:weather event append value {begin: 0, end: 0, event: 0}
execute store result storage hjrt:weather event[-1].begin int 1 run scoreboard players get #hjrt_weather_parse_from hjrt_num
execute store result storage hjrt:weather event[-1].end int 1 run scoreboard players get #hjrt_weather_parse_to hjrt_num
data modify storage hjrt:weather event[-1].event set from storage hjrt:weather event_real_copy[0].event

#删除第一个event_real_copy
data remove storage hjrt:weather event_real_copy[0]

#如果还有event就继续找
execute if data storage hjrt:weather event_real_copy[0] run function hjrt:weather_parse/cycle