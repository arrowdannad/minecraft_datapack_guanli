#数据包时间刻
execute if score awd_mx-gongjuren_tick awd_mx-tick matches 20.. run scoreboard players add awd_mx-gongjuren_tick awd_mx-tick_miao 1
execute if score awd_mx-gongjuren_tick awd_mx-tick matches 20.. run scoreboard players set awd_mx-gongjuren_tick awd_mx-tick 0
scoreboard players add awd_mx-gongjuren_tick awd_mx-tick 1

execute if score awd_mx-gongjuren_tick awd_mx-tick_miao matches 60.. run scoreboard players add awd_mx-gongjuren_tick awd_mx-tick_fen 1
execute if score awd_mx-gongjuren_tick awd_mx-tick_miao matches 60.. run scoreboard players set awd_mx-gongjuren_tick awd_mx-tick_miao 0

execute if score awd_mx-gongjuren_tick awd_mx-tick_fen matches 60.. run scoreboard players add awd_mx-gongjuren_tick awd_mx-tick_shi 1
execute if score awd_mx-gongjuren_tick awd_mx-tick_fen matches 60.. run scoreboard players set awd_mx-gongjuren_tick awd_mx-tick_fen 0

execute if score awd_mx-gongjuren_tick awd_mx-tick_shi matches 24.. run scoreboard players set awd_mx-gongjuren_tick awd_mx-tick_shi 0