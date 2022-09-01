scoreboard objectives remove hjrt_num
scoreboard objectives remove hjrt_loaded

function hjrt:stop

data remove storage hjrt:string time_int_success
data remove storage hjrt:string guess
data remove storage hjrt:string guess_before
data remove storage hjrt:string time_int
data remove storage hjrt:weather event
data remove storage hjrt:weather event_copy
data remove storage hjrt:weather event_real
data remove storage hjrt:weather cycle
data remove storage hjrt:selected id

forceload remove 1489421 14700101 1489421 14700111

fill 1489421 200 14700101 1489421 200 14700111 air replace
kill 58c6c35b-0000-0001-0000-000100000001
kill 58c6c35b-0000-0001-0000-000100000002

tellraw @s "卸载完成！"
