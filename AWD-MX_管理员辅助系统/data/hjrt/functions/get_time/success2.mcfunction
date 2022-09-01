#显示当前时间
function hjrt:time_change
tellraw @a [{"text":"现在时间: "},{"storage":"hjrt:time","nbt":"now","interpret": true}]

#每1s加1
schedule function hjrt:get_time/add 1s append

tellraw @a {"text":"时间获取完成！"}