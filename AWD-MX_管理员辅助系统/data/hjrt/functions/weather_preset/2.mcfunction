#预设2：较干燥的天气(冬天)

#data modify storage hjrt:weather event set value [{begin: 86400, end: 108000, event: 1}, {begin: 109800, end: 172800, event: 1}]

data modify storage hjrt:weather cycle set value 8
data modify storage hjrt:weather event_real set value [{from:[2,0,0,0], to:[2,6,0,0], event: 1}, {from:[2,6,30,0], to:[3,0,0,0], event: 1}]
function hjrt:weather_parse/run

tellraw @s {"text":"已切换到预设2"}