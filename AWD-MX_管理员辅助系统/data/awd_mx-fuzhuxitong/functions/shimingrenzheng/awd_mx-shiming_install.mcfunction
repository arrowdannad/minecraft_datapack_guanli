#实名认证(流程)
#固定未认证玩家
#弹出认证界面，加载输入界面
#踢出超过1分钟没有动作的玩家
#认证算法：删掉前六位，并计数，保存之后八位，删除之后二位，保留一位，删除最后一位（总共9位）
#前八位：用当前年减去前四位，如果大于等于18，标记成年， 每十小时踢出，保持十分钟。
#如果小于18，计算等于18的差值，标记未成年，并且在计分板保存差值，直到成年，并且依据服主配置时间允许上线
#未成年默认每天一小时游玩时间
#

#实名认证(主函数)
scoreboard players set @a[scores={awd_mx-shiming_nianling=0..0}] awd_mx-shiming_nianling 0
execute if score awd_mx-gongjuren_tick awd_mx-tick matches 20.. run scoreboard players add @a awd_mx-tick 1

tp @a[scores={awd_mx-shiming_nianling=0}] 0.5 -62.5 0.5
#在线控制
function awd_mx-fuzhuxitong:shimingrenzheng/awd_mx-shiming_zaixiankongzhi
#调用认证弹窗
execute at @a[scores={awd_mx-shiming_nianling=0..6}] run function awd_mx-fuzhuxitong:shimingrenzheng/awd_mx-shiming_tanchuang