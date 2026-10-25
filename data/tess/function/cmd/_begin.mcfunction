#执行实体是一个容器实体item_display
#执行位置是容器实体所代表的容器方块的位置


#在运行#tess:enter前，一定要在命令存储tess:cmd里添加若干操作请求
#像这样添加一个操作请求：data modify storage tess:cmd quests append value {opt:{$(操作名):true},target:xxx,source: xxx}
#注意不要在opt里写多个操作名

#往ui物品里写入坐标，存储在命令存储tess:cmd_temp里
execute if entity @s[tag=!tess.cmd.imp.cycle] run function tess:cmd/begin.pos
#提取队头
data modify storage tess:cmd top set from storage tess:cmd quests.[0]
data remove storage tess:cmd quests.[0]

#检测操作名并打上标签
    #opt.add: 在当前页面的指定槽位添加一个ui物品
    #source:ui物品的战利品表;target:要添加的槽位
    execute if data storage tess:cmd top.opt.add run return run tag @s add tess.cmd.add

    #opt.remove: 在当前页面的指定槽位删除一个ui物品
    #target:删除的ui物品所在的槽位
    execute if data storage tess:cmd top.opt.remove run return run tag @s add tess.cmd.remove

    #opt.modify: 在当前页面的指定槽位施加一个物品修饰器
    #source:物品修饰器文件;target:要施加的槽位
    execute if data storage tess:cmd top.opt.modify run return run tag @s add tess.cmd.modify

    #opt.pop: 在当前页面，弹出指定槽位的非ui物品
    #target:要弹出的物品所在的槽位
    execute if data storage tess:cmd top.opt.pop run return run tag @s add tess.cmd.pop

    #opt.set_home: 设置当前页面为主页面
    #无参数
    execute if data storage tess:cmd top.opt.set_home run return run tag @s add tess.cmd.set_home

    #opt.go_home: 立刻跳转到主页面
    #无参数
    execute if data storage tess:cmd top.opt.go_home run return run tag @s add tess.cmd.go_home

#Fallback
tellraw @a[gamemode=creative] {translate:"tess.error.begin","fallback":"[Tess]运行cmd时错误：无效的操作名",color:"red"}