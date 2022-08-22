scoreboard players operation #hjrt_weather_now hjrt_num = #hjrt_weather_event hjrt_num

#1 为雨
execute if score #hjrt_weather_event hjrt_num matches 1 run weather rain

#2 为雷暴
execute if score #hjrt_weather_event hjrt_num matches 2 run weather thunder