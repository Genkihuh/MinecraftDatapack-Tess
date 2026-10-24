execute if entity @s[tag=!tess.nklock] if entity @n[type=item_display,tag=tess.loaded,distance=..2] run tag @s add tess.nklock
execute if data entity @s[tag=tess.nklock] {Enabled:1b} run data modify entity @s Enabled set value 0b
execute unless entity @n[type=item_display,tag=tess.loaded,distance=..2] run data modify entity @s Enabled set value 1b
execute unless entity @n[type=item_display,tag=tess.loaded,distance=..2] run tag @s remove tess.nklock

