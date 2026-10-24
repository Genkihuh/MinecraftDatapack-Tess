#检测是否为本操作
execute if entity @s[tag=!tess.cmd.add] run return fail
tag @s remove tess.cmd.add

#存储target的值
execute store result score @s tess.cmd.target run data get storage tess:cmd top.target
#庞大的穷举
execute if score @s tess.cmd.target matches 0 run return run function tess:cmd/add/0
execute if score @s tess.cmd.target matches 1 run return run function tess:cmd/add/1
execute if score @s tess.cmd.target matches 2 run return run function tess:cmd/add/2
execute if score @s tess.cmd.target matches 3 run return run function tess:cmd/add/3
execute if score @s tess.cmd.target matches 4 run return run function tess:cmd/add/4
execute if score @s tess.cmd.target matches 5 run return run function tess:cmd/add/5
execute if score @s tess.cmd.target matches 6 run return run function tess:cmd/add/6
execute if score @s tess.cmd.target matches 7 run return run function tess:cmd/add/7
execute if score @s tess.cmd.target matches 8 run return run function tess:cmd/add/8
execute if score @s tess.cmd.target matches 9 run return run function tess:cmd/add/9
execute if score @s tess.cmd.target matches 10 run return run function tess:cmd/add/10
execute if score @s tess.cmd.target matches 11 run return run function tess:cmd/add/11
execute if score @s tess.cmd.target matches 12 run return run function tess:cmd/add/12
execute if score @s tess.cmd.target matches 13 run return run function tess:cmd/add/13
execute if score @s tess.cmd.target matches 14 run return run function tess:cmd/add/14
execute if score @s tess.cmd.target matches 15 run return run function tess:cmd/add/15
execute if score @s tess.cmd.target matches 16 run return run function tess:cmd/add/16
execute if score @s tess.cmd.target matches 17 run return run function tess:cmd/add/17
execute if score @s tess.cmd.target matches 18 run return run function tess:cmd/add/18
execute if score @s tess.cmd.target matches 19 run return run function tess:cmd/add/19
execute if score @s tess.cmd.target matches 20 run return run function tess:cmd/add/20
execute if score @s tess.cmd.target matches 21 run return run function tess:cmd/add/21
execute if score @s tess.cmd.target matches 22 run return run function tess:cmd/add/22
execute if score @s tess.cmd.target matches 23 run return run function tess:cmd/add/23
execute if score @s tess.cmd.target matches 24 run return run function tess:cmd/add/24
execute if score @s tess.cmd.target matches 25 run return run function tess:cmd/add/25
execute if score @s tess.cmd.target matches 26 run return run function tess:cmd/add/26

#Fallback
tellraw @a[gamemode=creative] {translate:"tess.error.add","fallback":"[Tess]运行cmd/add时错误：无效的槽位（target应在0~26之间）",color:"red"}