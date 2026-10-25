#执行实体：新的、用于保存home界面的marker

#插进实体树里
ride @s mount @n[tag=tess.need_home]
#初始化计分板
scoreboard players operation @s tess.page_index = @n[tag=tess.need_home] tess.current_index

#读取初始ui
data modify entity @s data.tess.ui_origin set from block ~ ~ ~ Items
#标记为当前界面
tag @s add tess.imp.current
#标记为home界面
tag @s add tess.imp.home