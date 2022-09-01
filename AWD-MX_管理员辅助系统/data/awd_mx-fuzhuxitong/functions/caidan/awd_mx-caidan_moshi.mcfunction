#修改模式UI
tellraw @a[scores={awd_mx-caidan=2,awd-guanli=3..}] ["",{"text":"----------------------------------------","color":"yellow"}]
#生存模式下
tellraw @a[scores={awd_mx-caidan=2,awd-guanli=3..,awd_mx-guanli_moshi=1}] ["",{"text":"| ","color":"green"},{"text": "创造模式","color": "yellow","clickEvent": {"action": "run_command","value": "/trigger awd_mx-guanli_moshi set 1"}}]
#旁观模式下
tellraw @a[scores={awd_mx-caidan=2,awd-guanli=3..,awd_mx-guanli_moshi=3}] ["",{"text":"| ","color":"green"},{"text": "创造模式","color": "yellow","clickEvent": {"action": "run_command","value": "/trigger awd_mx-guanli_moshi set 4"}}]
#冒险模式下
tellraw @a[scores={awd_mx-caidan=2,awd-guanli=3..,awd_mx-guanli_moshi=5}] ["",{"text":"| ","color":"green"},{"text": "创造模式","color": "yellow","clickEvent": {"action": "run_command","value": "/trigger awd_mx-guanli_moshi set 6"}}]

tellraw @a[scores={awd_mx-caidan=2,awd-guanli=3..}] ["",{"text":"| ","color":"green"},{"text": "冒险模式","color": "yellow","clickEvent": {"action": "run_command","value": "/trigger awd_mx-guanli_moshi set 5"}}]
tellraw @a[scores={awd_mx-caidan=2,awd-guanli=3..}] ["",{"text":"| ","color":"green"},{"text": "旁观模式","color": "yellow","clickEvent": {"action": "run_command","value": "/trigger awd_mx-guanli_moshi set 3"}}]
tellraw @a[scores={awd_mx-caidan=2,awd-guanli=3..}] ["",{"text":"| ","color":"green"},{"text": "生存模式","color": "yellow","clickEvent": {"action": "run_command","value": "/trigger awd_mx-guanli_moshi set 0"}}]
tellraw @a[scores={awd_mx-caidan=2,awd-guanli=3..}] ["",{"text":"----------------------------------------","color":"yellow"}]
scoreboard players enable @a awd_mx-guanli_moshi
scoreboard players set @a[scores={awd_mx-caidan=2}] awd_mx-caidan 0