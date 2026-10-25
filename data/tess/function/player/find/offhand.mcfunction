item replace entity @s contents from entity @p[tag=tess.player.find] weapon.offhand
item replace entity @p[tag=tess.player.find] weapon.offhand with air
tag @s add tess.entity.find

execute at @s as @p[tag=tess.player.find] run function tess:slot/modify with entity @n[tag=tess.entity.find] item.components."minecraft:custom_data".tess.comp_data

kill @s