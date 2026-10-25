tag @s remove tess.imp.current

#缓存所有非ui物品
data modify entity @s data.tess.ui_cache set from block ~ ~ ~ Items
data remove entity @s data.tess.ui_cache.[{components:{"minecraft:custom_data":{tess:{if_ui:1b}}}}]
