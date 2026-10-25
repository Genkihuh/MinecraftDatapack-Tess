#缓存ui生成器的custom_data
data remove storage tess:temp gui
data modify entity @s item.components."minecraft:custom_data".tess.target_ui set from block ~ ~ ~ Items.[{Slot:0b}].components."minecraft:custom_data".tess.ui_name
data modify storage tess:temp gui set from block ~ ~ ~ Items.[{Slot:0b}].components."minecraft:custom_data".tess.gui
function tess:item_display/machine_loading/loot

#清除所有占位物品
data remove block ~ ~ ~ Items.[{components:{"minecraft:custom_data":{tess:{type:"void"}}}}]

#往ui物品里写入坐标
execute store result storage tess:temp guipos.x int 1 run data get entity @s Pos.[0]
execute store result storage tess:temp guipos.y int 1 run data get entity @s Pos.[1]
execute store result storage tess:temp guipos.z int 1 run data get entity @s Pos.[2]
function tess:item_display/machine_loading/item_mdf with storage tess:temp guipos
function tess:item_display/machine_loading/copy_slot

#新建一个节点
tag @s add tess.new
execute summon marker run function tess:marker/new
tag @s remove tess.new