scoreboard players operation #hjrt_time_hour hjrt_num = #hjrt_time_now hjrt_num
scoreboard players operation #hjrt_time_hour hjrt_num /= #hjrt_num_3600 hjrt_num
scoreboard players operation #hjrt_time_minute hjrt_num = #hjrt_time_now hjrt_num
scoreboard players operation #hjrt_time_minute hjrt_num %= #hjrt_num_3600 hjrt_num
scoreboard players operation #hjrt_time_minute hjrt_num /= #hjrt_num_60 hjrt_num
scoreboard players operation #hjrt_time_second hjrt_num = #hjrt_time_now hjrt_num
scoreboard players operation #hjrt_time_second hjrt_num %= #hjrt_num_60 hjrt_num
data modify storage hjrt:time now set value '[{"score":{"name":"#hjrt_time_hour","objective":"hjrt_num"}},{"text":":"},{"score":{"name":"#hjrt_time_minute","objective":"hjrt_num"}},{"text":":"},{"score":{"name":"#hjrt_time_second","objective":"hjrt_num"}}]'