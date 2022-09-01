#分离event
execute store result score #hjrt_weather_begin hjrt_num run data get storage hjrt:weather event_copy[0].begin
execute store result score #hjrt_weather_end hjrt_num run data get storage hjrt:weather event_copy[0].end
execute store result score #hjrt_weather_event hjrt_num run data get storage hjrt:weather event_copy[0].event

#比较
execute if score #hjrt_weather_time hjrt_num >= #hjrt_weather_begin hjrt_num if score #hjrt_weather_time hjrt_num <= #hjrt_weather_end hjrt_num run function hjrt:weather_change/true

#不在这个区间就继续找
execute if score #hjrt_weather_testfor hjrt_num matches 0 run function hjrt:weather_change/false