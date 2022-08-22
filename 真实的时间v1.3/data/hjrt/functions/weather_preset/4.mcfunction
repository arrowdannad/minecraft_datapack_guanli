#预设4：全天有雨
data modify storage hjrt:weather event set value [{begin: 0, end: 96400, event: 1}]
data modify storage hjrt:weather cycle set value 1

tellraw @s {"text":"已切换到预设4"}