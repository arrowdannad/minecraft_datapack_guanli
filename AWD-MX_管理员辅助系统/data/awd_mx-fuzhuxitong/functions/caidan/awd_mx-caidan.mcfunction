#显示
tellraw @a[scores={awd_mx-caidan=1}] ["",{"text":"----------------------------------------","color":"yellow"}]
tellraw @a[scores={awd_mx-caidan=1}] ["",{"text":"玩家菜单","color":"yellow"}]
tellraw @a[scores={awd_mx-caidan=1}] ["",{"text":"| ","color":"green"},{"text": "返回出生点[小心使用 (≧∇≦)ﾉ ]","color": "blue","clickEvent": {"action": "run_command","value": "/trigger awd_mx-caidan_mokuai set 1"}}]
tellraw @a[scores={awd_mx-caidan=1}] ["",{"text":"----------------------------------------","color":"yellow"}]
tellraw @a[scores={awd_mx-caidan=1,awd_mx-guanli=1..}] ["",{"text":"管理员菜单","color":"yellow"}]
tellraw @a[scores={awd_mx-caidan=1,awd_mx-guanli=1..}] ["",{"text":"| ","color":"green"},{"text": "修改公告","color": "blue","clickEvent": {"action": "run_command","value": "/trigger awd-gonggao set 2"}}]
tellraw @a[scores={awd_mx-caidan=1,awd_mx-guanli=3..}] ["",{"text":"| ","color":"green"},{"text": "修改游戏模式","color": "blue","clickEvent": {"action": "run_command","value": "/trigger awd_mx-caidan set 2"}}]
tellraw @a[scores={awd_mx-caidan=1,awd_mx-guanli=1}] ["",{"text":"| ","color":"green"},{"text": "管理管理员","color": "yellow","clickEvent": {"action":"run_command","value": "/scoreboard players set @s awd_mx-caidan 3"}}]
tellraw @a[scores={awd_mx-caidan=1,awd_mx-guanli=1}] ["",{"text":"| ","color":"green"},{"text": "关闭数据包","color": "red","clickEvent": {"action": "run_command","value": "/function awd_mx-fuzhuxitong:awd_mx-uninstall"}}]
tellraw @a[scores={awd_mx-caidan=1,awd_mx-guanli=1..}] ["",{"text":"----------------------------------------","color":"yellow"}]

#引用（模式）
execute at @a[scores={awd_mx-caidan=2,awd_mx-tick=3}] run function awd_mx-fuzhuxitong:caidan/awd_mx-caidan_moshi
execute at @a[scores={awd_mx-caidan=3,awd_mx-tick=3}] run function awd_mx-fuzhuxitong:caidan/awd_mx-caidan_guanliyuan

give @a[scores={awd_mx-caidan=1}] snowball 1
scoreboard players set @a[scores={awd_mx-caidan=1..}] awd_mx-caidan 0