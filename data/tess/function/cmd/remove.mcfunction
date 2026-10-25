#检测是否为本操作
execute if entity @s[tag=!tess.cmd.remove] run return fail
tag @s remove tess.cmd.remove


#存储target的值
execute store result score @s tess.cmd.target run data get storage tess:cmd top.target
#庞大的穷举
execute if score @s tess.cmd.target matches 0 run return run function tess:cmd/remove/0
execute if score @s tess.cmd.target matches 1 run return run function tess:cmd/remove/1
execute if score @s tess.cmd.target matches 2 run return run function tess:cmd/remove/2
execute if score @s tess.cmd.target matches 3 run return run function tess:cmd/remove/3
execute if score @s tess.cmd.target matches 4 run return run function tess:cmd/remove/4
execute if score @s tess.cmd.target matches 5 run return run function tess:cmd/remove/5
execute if score @s tess.cmd.target matches 6 run return run function tess:cmd/remove/6
execute if score @s tess.cmd.target matches 7 run return run function tess:cmd/remove/7
execute if score @s tess.cmd.target matches 8 run return run function tess:cmd/remove/8
execute if score @s tess.cmd.target matches 9 run return run function tess:cmd/remove/9
execute if score @s tess.cmd.target matches 10 run return run function tess:cmd/remove/10
execute if score @s tess.cmd.target matches 11 run return run function tess:cmd/remove/11
execute if score @s tess.cmd.target matches 12 run return run function tess:cmd/remove/12
execute if score @s tess.cmd.target matches 13 run return run function tess:cmd/remove/13
execute if score @s tess.cmd.target matches 14 run return run function tess:cmd/remove/14
execute if score @s tess.cmd.target matches 15 run return run function tess:cmd/remove/15
execute if score @s tess.cmd.target matches 16 run return run function tess:cmd/remove/16
execute if score @s tess.cmd.target matches 17 run return run function tess:cmd/remove/17
execute if score @s tess.cmd.target matches 18 run return run function tess:cmd/remove/18
execute if score @s tess.cmd.target matches 19 run return run function tess:cmd/remove/19
execute if score @s tess.cmd.target matches 20 run return run function tess:cmd/remove/20
execute if score @s tess.cmd.target matches 21 run return run function tess:cmd/remove/21
execute if score @s tess.cmd.target matches 22 run return run function tess:cmd/remove/22
execute if score @s tess.cmd.target matches 23 run return run function tess:cmd/remove/23
execute if score @s tess.cmd.target matches 24 run return run function tess:cmd/remove/24
execute if score @s tess.cmd.target matches 25 run return run function tess:cmd/remove/25
execute if score @s tess.cmd.target matches 26 run return run function tess:cmd/remove/26


#Fallback
tellraw @a[gamemode=creative] {translate:"tess.error.remove","fallback":"[Tess]运行cmd/add时错误：无效的槽位（target应在0~26之间）",color:"red"}