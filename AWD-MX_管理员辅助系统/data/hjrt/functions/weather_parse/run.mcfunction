#清空event
data remove storage hjrt:weather event

#复制event_real列表
data modify storage hjrt:weather event_real_copy set from storage hjrt:weather event_real

#如果有event_real就进入循环
execute if data storage hjrt:weather event_real_copy[0] run function hjrt:weather_parse/cycle