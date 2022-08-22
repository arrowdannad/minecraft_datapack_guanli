#初始化计分板
scoreboard players set #hjrt_time hjrt_num 1
scoreboard players set #hjrt_time_min hjrt_num 0
scoreboard players set #hjrt_time_max hjrt_num 10
scoreboard players set #hjrt_gone_time hjrt_num 0

#清除命令方块和盔甲架
fill 1489421 200 14700101 1489421 200 14700111 air replace
kill 58c6c35b-0000-0001-0000-000100000001
kill 58c6c35b-0000-0001-0000-000100000002

#初始化storage
data modify storage hjrt:string guess set value '{"text":"["}'
data modify storage hjrt:string guess_before set value '{"text":"["}'
data modify storage hjrt:string time_int set value [3,3,3,3,3,3]
data remove storage hjrt:string time_int_success

#开始判断时间
tellraw @a {"text":"正在重新获取时间，请稍后......"}

#加载区块
forceload add 1489421 14700101 1489421 14700111

#清空schedule
function hjrt:stop

#开始猜字符
schedule function hjrt:get_time/init 2t append
