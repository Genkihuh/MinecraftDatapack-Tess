#本函数执行实体：带有标签tess.imp.home的实体
#环境：根实体有标签tess.reset_index

#重置
data modify block ~ ~ ~ Items set from entity @s data.tess.ui_origin
data modify block ~ ~ ~ Items append from entity @s data.tess.ui_cache.[]

#标记为当前界面
scoreboard players operation @n[tag=tess.reset_index] tess.current_index = @s tess.page_index
tag @s add tess.imp.current
