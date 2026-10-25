tag @s add tess.player.update_slot
execute summon item_display run function tess:slot/modify/sm/5
function tess:slot/modify with entity @n[tag=tess.temp.update_slot,limit=1] item.components."minecraft:custom_data".tess.comp_data
item replace entity @s container.5 with air
kill @n[tag=tess.temp.update_slot,limit=1]
