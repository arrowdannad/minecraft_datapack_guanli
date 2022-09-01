#预设3：全天晴朗
data modify storage hjrt:weather event set value []
data modify storage hjrt:weather cycle set value 1

tellraw @s {"text":"已切换到预设3"}