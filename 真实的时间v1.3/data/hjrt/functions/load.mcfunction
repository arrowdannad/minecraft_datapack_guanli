#计分板
scoreboard objectives add hjrt_num dummy
scoreboard objectives add hjrt_loaded dummy
scoreboard players set #hjrt_loaded hjrt_loaded 1
scoreboard players set #hjrt_time hjrt_num 1
scoreboard players set #hjrt_time_min hjrt_num 0
scoreboard players set #hjrt_time_max hjrt_num 10
scoreboard players set #hjrt_gone_time hjrt_num 0
scoreboard players set #hjrt_num_-1 hjrt_num -1
scoreboard players set #hjrt_num_5 hjrt_num 5
scoreboard players set #hjrt_num_10 hjrt_num 10
scoreboard players set #hjrt_num_18 hjrt_num 18
scoreboard players set #hjrt_num_60 hjrt_num 60
scoreboard players set #hjrt_num_3600 hjrt_num 3600
scoreboard players set #hjrt_num_24000 hjrt_num 24000
scoreboard players set #hjrt_num_86400 hjrt_num 86400
execute unless score #hjrt_weather_open hjrt_num matches 0.. run scoreboard players set #hjrt_weather_open hjrt_num 1
execute unless score #hjrt_update hjrt_num matches 0.. run scoreboard players set #hjrt_update hjrt_num 3600
execute unless score #hjrt_need_update hjrt_num matches 0.. run scoreboard players set #hjrt_need_update hjrt_num 1

#清除命令方块和盔甲架
fill 1489421 200 14700101 1489421 200 14700111 air replace
kill 58c6c35b-0000-0001-0000-000100000001
kill 58c6c35b-0000-0001-0000-000100000002

#初始化storage
data modify storage hjrt:string guess set value '{"text":"["}'
data modify storage hjrt:string guess_before set value '{"text":"["}'
data modify storage hjrt:string time_int set value [3,3,3,3,3,3]
data remove storage hjrt:string time_int_success
#天气默认为预设1,8天为1周期(因为月相是8天一周期),降水较多<awd_mx>
#execute unless data storage hjrt:weather cycle run function hjrt:weather_preset/1

#取消日月交替<awd_mx>
#gamerule doDaylightCycle false

#默认使用数据包自带的天气变化<awd_mx>
#execute unless score #hjrt_weather_open hjrt_num matches 0.. run function hjrt:weather_on

#开始判断时间
tellraw @a {"text":"正在获取时间，请稍后......"}

#加载区块
forceload add 1489421 14700101 1489421 14700111

#清空schedule
function hjrt:stop

#开始猜字符
schedule function hjrt:get_time/init 2t append
