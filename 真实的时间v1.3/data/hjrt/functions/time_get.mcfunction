#显示当前时间
function hjrt:time_change
tellraw @s[tag=0000] [{"text":"现在时间: "},{"storage":"hjrt:time","nbt":"now","interpret": true}]