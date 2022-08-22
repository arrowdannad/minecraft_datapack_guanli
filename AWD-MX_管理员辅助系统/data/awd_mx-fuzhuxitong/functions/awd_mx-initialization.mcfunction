#初始计分板
scoreboard objectives add awd_mx-tick dummy "总时间"
scoreboard objectives add awd_mx-tick_shi dummy "时"
scoreboard objectives add awd_mx-tick_fen dummy "分"
scoreboard objectives add awd_mx-tick_miao dummy "秒"
scoreboard players set awd_mx-gongjuren_tick awd_mx-tick 0
scoreboard objectives add awd_mx-register minecraft.custom:minecraft.leave_game "登录控制"
#管理员计分板
function awd_mx-fuzhuxitong:guanli/awd_mx-op_initialization
#菜单计分板
function awd_mx-fuzhuxitong:caidan/awd_mx-caidan_initialization
#实名认证
function awd_mx-fuzhuxitong:shimingrenzheng/awd_mx-shiming_initialization
#事务钩子处理
datapack disable "awd_mx-fuzhuxitong"