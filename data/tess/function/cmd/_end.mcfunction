#清除队头缓存
data remove storage tess:cmd top
#打上循环标记避免重复执行某些语句
tag @s[tag=!tess.cmd.imp.cycle] add tess.cmd.imp.cycle

#循环
execute if data storage tess:cmd quests.[0].opt run return run function #tess:cmd
#结束
tag @s remove tess.cmd.imp.cycle