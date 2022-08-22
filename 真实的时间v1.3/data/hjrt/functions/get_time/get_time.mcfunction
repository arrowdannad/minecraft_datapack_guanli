data modify storage hjrt:selected id set value "minecraft:clock"
scoreboard players set #hjrt_select_clock hjrt_num -1
execute if data entity @s SelectedItem.id run execute store success score #hjrt_select_clock hjrt_num run data modify storage hjrt:selected id set from entity @s SelectedItem.id
execute if score #hjrt_select_clock hjrt_num matches 0 run function hjrt:time_get