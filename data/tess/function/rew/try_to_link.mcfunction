tp ~ ~ ~
execute if predicate tess:special_barrel run return run function tess:rew/try_to_link1 with block ~ ~ ~ components."minecraft:custom_data".tess
scoreboard players add @s tess.temp.age 1

execute if score @s tess.temp.age matches 160.. run return run function tess:rew/fail_to_link
execute positioned ^ ^ ^0.2 run function tess:rew/try_to_link