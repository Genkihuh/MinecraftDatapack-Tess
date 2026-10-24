setblock ~ ~ ~ barrel{CustomName:{translate:"tess.fixed_name"}}
data modify block ~ ~ ~ Items set from entity @s data.tess.ui_cache
setblock ~ ~ ~ air destroy
kill @n[type=item,nbt={Item:{id:"minecraft:barrel",components:{"minecraft:custom_name":{translate:"tess.fixed_name"}}}}]
