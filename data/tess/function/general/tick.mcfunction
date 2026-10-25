execute as @a at @s run function tess:player/tick
execute as @e[type=marker,tag=tess.load] at @s run function tess:marker/load
execute as @e[type=item_display,tag=tess.loaded] at @s run function tess:item_display/tick
#防漏斗矿车
execute as @e[type=hopper_minecart] at @s run function tess:general/ban_minecart

