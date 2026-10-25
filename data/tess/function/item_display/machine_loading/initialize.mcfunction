#插入容器自定义名称
#翻译键tess:fixed_name是必须存在的，它主要用于识别木桶掉落物，不会影响名称显示
data modify block ~ ~ ~ CustomName set value {translate:"tess:fixed_name",fallback:""}
data modify block ~ ~ ~ CustomName.extra append from storage tess:temp marker.machine_name

#存储坐标于计分板
execute store result score @s tess.table.x run data get entity @s Pos.[0]
execute store result score @s tess.table.y run data get entity @s Pos.[1]
execute store result score @s tess.table.z run data get entity @s Pos.[2]

#保存当前页面的索引，更新计分板tess.current_index
execute store result score @s tess.current_index run data get block ~ ~ ~ Items.[{Slot:0b}].components."minecraft:custom_data".tess.page_index

#缓存ui生成器的custom_data
data remove storage tess:temp gui
data modify entity @s item.components."minecraft:custom_data".tess.target_ui set from block ~ ~ ~ Items.[{Slot:0b}].components."minecraft:custom_data".tess.ui_name
data modify storage tess:temp gui set from block ~ ~ ~ Items.[{Slot:0b}].components."minecraft:custom_data".tess.gui
function tess:item_display/machine_loading/loot

#清除所有占位物品
data remove block ~ ~ ~ Items.[{components:{"minecraft:custom_data":{tess:{type:"void"}}}}]

#往ui物品里写入坐标
execute store result storage tess:temp guipos.x int 1 run scoreboard players get @s tess.table.x
execute store result storage tess:temp guipos.y int 1 run scoreboard players get @s tess.table.y
execute store result storage tess:temp guipos.z int 1 run scoreboard players get @s tess.table.z
function tess:item_display/machine_loading/item_mdf with storage tess:temp guipos
function tess:item_display/machine_loading/copy_slot

#设置home界面
tag @s add tess.need_home
execute summon marker run function tess:marker/home
tag @s remove tess.need_home