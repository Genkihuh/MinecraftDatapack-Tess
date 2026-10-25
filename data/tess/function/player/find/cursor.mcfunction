#本函数执行实体：用于缓存选中物品的item_display
#环境：选中ui物品的玩家拥有标签tess.player.find


#缓存选中物品并清除选中物品
item replace entity @s contents from entity @p[tag=tess.player.find] player.cursor
item replace entity @p[tag=tess.player.find] player.cursor with air

#标记自己
tag @s add tess.entity.find

#对ui物品进行操作
execute at @s as @p[tag=tess.player.find] run function tess:slot/modify with entity @n[tag=tess.entity.find] item.components."minecraft:custom_data".tess.comp_data

#处理点击事件
execute if items entity @s contents *[custom_data~{tess:{type:"button"}}] as @p[tag=tess.player.find] unless score @s tess.button_cd matches 1 run function tess:click/click_button with entity @n[tag=tess.entity.find,distance=..0.5] item.components."minecraft:custom_data".tess.click_event
execute if items entity @s contents *[custom_data~{tess:{type:"goto"}}] as @p[tag=tess.player.find] run function tess:goto/goto

#清除自身
kill @s