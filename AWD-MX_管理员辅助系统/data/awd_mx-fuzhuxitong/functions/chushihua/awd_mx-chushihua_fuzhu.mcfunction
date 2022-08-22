execute at @r run tag @p[tag=!awd_mx-fuzhu] add awd_mx-fuzhu
tellraw @a[tag=awd_mx-fuzhu] ["",{"text":"[管理辅助系统] ","color":"red"},{"text": "正在为您注册为服主","color": "yellow"}] 
tellraw @a[tag=awd_mx-fuzhu] ["",{"text":"[管理辅助系统] ","color":"red"},{"text": "注册完成","color": "yellow"}]
tellraw @a[tag=awd_mx-fuzhu] ["",{"text":"[管理辅助系统] ","color":"red"},{"text": "您已是服主啦","color": "yellow"}]
scoreboard players set @a[tag=awd_mx-fuzhu] awd_mx-guanli 1
scoreboard players set @a[tag=awd_mx-fuzhu] awd_mx-shiming_nianling -1
scoreboard players set @a[scores={awd_mx-guanli=1},tag=fuzhu] awd_mx-caidan 1
scoreboard players set awd-mx_gongjuren_fuzhu awd_mx-shiming_nianling 1
tellraw @a[tag=awd_mx-fuzhu,scores={awd_mx-shiming_nianling}] ["",{"text":"[管理辅助系统] ","color":"red"},{"text": "实名认证已启用","color": "yellow"}]

execute at @a[tag=awd_mx-fuzhu] run tag @a[name="awd-mx_gongjuren_fuzhu",tag=!awd_mx-fuzhu] add awd_mx-fuzhu