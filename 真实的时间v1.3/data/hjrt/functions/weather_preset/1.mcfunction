#预设1：较湿润的天气(夏天)

#data modify storage hjrt:weather event set value [{begin: 86400, end: 88200, event: 2}, {begin: 88201, end: 108000, event: 1}, {begin: 183600, end: 185400, event: 2}, {begin: 223200, end: 225000, event: 2}, {begin: 381600, end: 403200, event: 1}, {begin: 669600, end: 671400, event: 2}, {begin: 684000, end: 685800, event: 2}]

data modify storage hjrt:weather cycle set value 8
data modify storage hjrt:weather event_real set value [{from:[2,0,0,0], to:[2,0,30,0], event: 2}, {from:[2,0,30,1], to:[2,6,0,0], event: 1}, {from:[3,3,0,0], to:[3,3,30,0], event: 2}, {from:[3,14,0,0], to:[3,14,30,0], event: 2}, {from:[5,10,0,0], to:[5,16,0,0], event: 1}, {from:[8,18,0,0], to:[8,18,30,0], event: 2}, {from:[8,22,0,0], to:[8,22,30,0], event: 2}]
function hjrt:weather_parse/run

tellraw @s {"text":"已切换到预设1"}