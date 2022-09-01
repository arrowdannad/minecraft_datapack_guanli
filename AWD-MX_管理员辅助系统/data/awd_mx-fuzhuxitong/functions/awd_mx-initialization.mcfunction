#初始计分板
scoreboard objectives add awd_mx-tick dummy "总时间"
scoreboard objectives add awd_mx-tick_shi dummy "时"
scoreboard objectives add awd_mx-tick_fen dummy "分"
scoreboard objectives add awd_mx-tick_miao dummy "秒"
scoreboard objectives add awd_mx-register minecraft.custom:minecraft.leave_game "登录控制"
scoreboard players set awd_mx-gongjuren_tick awd_mx-tick 0
#初始化时间
schedule function awd_mx-fuzhuxitong:mokuai/awd_mx-shijian_jiaozhun 5s append
#初始化工具人
scoreboard players set awd_mx-gongjuren_fuzhu awd_mx-shiming_nianling 0
execute if entity @a[tag=awd_mx-fuzhu] run scoreboard players set awd_mx-gongjuren_fuzhu awd_mx-shiming_nianling 1
#管理员计分板
function awd_mx-fuzhuxitong:guanli/awd_mx-op_initialization
#菜单计分板
function awd_mx-fuzhuxitong:caidan/awd_mx-caidan_initialization
#实名认证
function awd_mx-fuzhuxitong:shimingrenzheng/awd_mx-shiming_initialization
#补丁
#关闭数据包后再次启用导致的服主权限丢失问题
scoreboard players set @a[tag=awd_mx-fuzhu] awd_mx-guanli 1