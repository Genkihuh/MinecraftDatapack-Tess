rotate @s facing entity @p
execute store result score @s tess.r run data get entity @s Rotation.[0]
#矫正视线
execute if score @s tess.r matches -180..-136 run tp @s ~ ~ ~ 180 0
execute if score @s tess.r matches -135..-46 run tp @s ~ ~ ~ -90 0
execute if score @s tess.r matches -45..44 run tp @s ~ ~ ~ 0 0
execute if score @s tess.r matches 45..134 run tp @s ~ ~ ~ 90 0
execute if score @s tess.r matches 135..180 run tp @s ~ ~ ~ 180 0