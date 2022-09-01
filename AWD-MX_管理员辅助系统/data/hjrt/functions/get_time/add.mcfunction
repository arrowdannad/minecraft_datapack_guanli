scoreboard players add #hjrt_time_now hjrt_num 1

#超过86400就归0
execute if score #hjrt_time_now hjrt_num matches 86400.. run scoreboard players set #hjrt_time_now hjrt_num 0

#计算游戏时间(真实时间6:00在游戏中是0)
execute store result score #hjrt_game_time_before hjrt_num run time query daytime
scoreboard players operation #hjrt_game_time_now hjrt_num = #hjrt_time_now hjrt_num
scoreboard players operation #hjrt_game_time_now hjrt_num *= #hjrt_num_5 hjrt_num
scoreboard players operation #hjrt_game_time_now hjrt_num /= #hjrt_num_18 hjrt_num
scoreboard players remove #hjrt_game_time_now hjrt_num 6000
execute if score #hjrt_game_time_now hjrt_num matches ..-1 run scoreboard players add #hjrt_game_time_now hjrt_num 24000

#修改时间<awd_mx>
#scoreboard players operation #hjrt_game_time_dt hjrt_num = #hjrt_game_time_now hjrt_num
#scoreboard players operation #hjrt_game_time_dt hjrt_num -= #hjrt_game_time_before hjrt_num
#如果是负数就加1天<awd_mx>
#execute if score #hjrt_game_time_dt hjrt_num matches ..-1 run scoreboard players operation #hjrt_game_time_dt hjrt_num += #hjrt_num_24000 hjrt_num
#如果大于0就开始修改时间,如果是1就只加1<awd_mx>
#execute if score #hjrt_game_time_dt hjrt_num matches 1 run time add 1
#execute if score #hjrt_game_time_dt hjrt_num matches 2.. run function hjrt:modify_time/modify

#判断天气是否变化<awd_mx>
#execute unless score #hjrt_weather_open hjrt_num matches 0 run function hjrt:weather_change/run

#手持钟时，显示时间
execute as @a run function hjrt:get_time/get_time

#继续循环
schedule function hjrt:get_time/add 1s append

#判断是否重新获取时间
execute if score #hjrt_need_update hjrt_num matches 1 run function hjrt:get_time/update