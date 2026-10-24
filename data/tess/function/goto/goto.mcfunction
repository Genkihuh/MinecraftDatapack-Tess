#处理跳转的函数

#从玩家计分板读取坐标
execute store result storage tess:temp_goto x int 1 run scoreboard players get @s tess.table.x
execute store result storage tess:temp_goto y int 1 run scoreboard players get @s tess.table.y
execute store result storage tess:temp_goto z int 1 run scoreboard players get @s tess.table.z
#从带有tess.entity.find标签的缓存实体处读取要跳转的界面
data modify storage tess:temp_goto to set from entity @n[tag=tess.entity.find,distance=..0.5] item.components."minecraft:custom_data".tess.to

#转换执行实体为容器实体item_display
function tess:goto/page with storage tess:temp_goto