#将盔甲架2的tag替代盔甲架1的tag，如果无法替代，则排序前后，tag顺序不变，即在排序之前，前一个tag的字符的ascii码数值本来就比后一个tag的字符ascii码数值小(例：a<b, 1<2)
execute store success score #hjrt_is_this hjrt_num run data modify block 1489421 200 14700109 LastOutput set from block 1489421 200 14700110 LastOutput

#tellraw @a {"score":{"name":"#hjrt_is_this","objective":"hjrt_num"}}

#判断是否猜中(为1则实际数字应>=正在猜的数字，为0则实际数字应<正在猜的数字)
execute store result score #hjrt_time_1 hjrt_num run data get storage hjrt:string time_int[0] 1
execute if score #hjrt_is_this hjrt_num matches 0 run function hjrt:string_cycle/result_0
execute if score #hjrt_is_this hjrt_num matches 1 run function hjrt:string_cycle/result_1