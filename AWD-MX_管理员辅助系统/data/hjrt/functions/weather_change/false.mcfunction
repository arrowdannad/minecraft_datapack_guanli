#删除第一个event
data remove storage hjrt:weather event_copy[0]

#如果还有event就继续找
execute if data storage hjrt:weather event_copy[0] run function hjrt:weather_change/cycle