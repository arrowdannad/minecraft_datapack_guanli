#setblock 1489421 200 14700111 minecraft:oak_sign destroy
#data modify block 1489421 200 14700111 Text1 set value '[{"storage":"hjrt:string","nbt":"guess","interpret": true},{"storage":"hjrt:string","nbt":"time_int[0]"}]'

#初始化时间(一定要放在这里，不能放在load里面，修了我1个下午)
setblock 1489421 200 14700101 minecraft:command_block{auto:1,Command:"Hen_Ji_hjrt"} destroy

#计算获取时间时经过的时间
schedule function hjrt:get_time/gone_time 1s append

# 用二分法猜
fill 1489421 200 14700111 1489421 200 14700111 minecraft:oak_sign{Text1:'[{"storage":"hjrt:string","nbt":"guess_before","interpret": true},{"storage":"hjrt:string","nbt":"time_int[0]"}]'} replace

#有用到命令方块，但不能只延迟2t，不然可能会变成30:00:04(不知道为啥，但就是很离谱)
schedule function hjrt:get_time/run 4t append

#二分法思路：
# 0 1 2|③ 4 5 6 7 8 9
#          ↓
# 0|① 2|3 4 5|⑥ 7 8 9
#          ↓
# 0|1|②|3 4|⑤|6 7|⑧ 9
#          ↓
# 0|1|2|3|④|5|6|⑦|8|⑨
#          ↓
# 0|1|2|3|4|5|6|7|8|9