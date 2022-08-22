#菜单计分板
function awd_mx-fuzhuxitong:caidan/awd_mx-caidan_uninstall
#管理员计分板
function awd_mx-fuzhuxitong:guanli/awd_mx-op_uninstall
#实名认证
function awd_mx-fuzhuxitong:shimingrenzheng/awd_mx-shiming_uninstall
#初始计分板
scoreboard objectives remove awd_mx-tick
scoreboard objectives remove awd_mx-tick_shi
scoreboard objectives remove awd_mx-tick_fen
scoreboard objectives remove awd_mx-tick_miao
scoreboard objectives remove awd_mx-register

#事务钩子处理
tellraw @a ["",{"text": "[管理辅助系统] AWD_MX 辅助系统已关闭","color": "red"}]
datapack disable "AWD-MX_管理员辅助系统"