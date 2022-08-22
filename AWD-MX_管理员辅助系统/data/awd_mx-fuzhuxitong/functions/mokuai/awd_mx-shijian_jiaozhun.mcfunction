#时间校准模块
#调用时间校准
function hjrt:time_change
#接口同步时间
scoreboard players operation awd_mx-gongjuren_tick awd_mx-tick_shi = #hjrt_time_hour hjrt_num
scoreboard players operation awd_mx-gongjuren_tick awd_mx-tick_fen = #hjrt_time_minute hjrt_num
scoreboard players operation awd_mx-gongjuren_tick awd_mx-tick_miao = #hjrt_time_second hjrt_num
#本地使用
#NULL