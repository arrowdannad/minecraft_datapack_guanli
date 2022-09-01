#预设5：全天雷暴
data modify storage hjrt:weather event set value [{begin: 0, end: 96400, event: 2}]
data modify storage hjrt:weather cycle set value 1

tellraw @s {"text":"已切换到预设5"}