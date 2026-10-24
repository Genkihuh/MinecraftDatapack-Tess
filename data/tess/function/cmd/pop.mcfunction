#检测是否为本操作
execute if entity @s[tag=!tess.cmd.pop] run return fail
tag @s remove tess.cmd.pop

#存储target的值
execute store result score @s tess.cmd.target run data get storage tess:cmd top.target

#庞大的穷举
execute if score @s tess.cmd.target matches 0 run return run execute unless items block ~ ~ ~ container.0 *[custom_data~{tess:{if_ui:true}}] run function tess:cmd/pop/0
execute if score @s tess.cmd.target matches 1 run return run execute unless items block ~ ~ ~ container.1 *[custom_data~{tess:{if_ui:true}}] run function tess:cmd/pop/1
execute if score @s tess.cmd.target matches 2 run return run execute unless items block ~ ~ ~ container.2 *[custom_data~{tess:{if_ui:true}}] run function tess:cmd/pop/2
execute if score @s tess.cmd.target matches 3 run return run execute unless items block ~ ~ ~ container.3 *[custom_data~{tess:{if_ui:true}}] run function tess:cmd/pop/3
execute if score @s tess.cmd.target matches 4 run return run execute unless items block ~ ~ ~ container.4 *[custom_data~{tess:{if_ui:true}}] run function tess:cmd/pop/4
execute if score @s tess.cmd.target matches 5 run return run execute unless items block ~ ~ ~ container.5 *[custom_data~{tess:{if_ui:true}}] run function tess:cmd/pop/5
execute if score @s tess.cmd.target matches 6 run return run execute unless items block ~ ~ ~ container.6 *[custom_data~{tess:{if_ui:true}}] run function tess:cmd/pop/6
execute if score @s tess.cmd.target matches 7 run return run execute unless items block ~ ~ ~ container.7 *[custom_data~{tess:{if_ui:true}}] run function tess:cmd/pop/7
execute if score @s tess.cmd.target matches 8 run return run execute unless items block ~ ~ ~ container.8 *[custom_data~{tess:{if_ui:true}}] run function tess:cmd/pop/8
execute if score @s tess.cmd.target matches 9 run return run execute unless items block ~ ~ ~ container.9 *[custom_data~{tess:{if_ui:true}}] run function tess:cmd/pop/9
execute if score @s tess.cmd.target matches 10 run return run execute unless items block ~ ~ ~ container.10 *[custom_data~{tess:{if_ui:true}}] run function tess:cmd/pop/10
execute if score @s tess.cmd.target matches 11 run return run execute unless items block ~ ~ ~ container.11 *[custom_data~{tess:{if_ui:true}}] run function tess:cmd/pop/11
execute if score @s tess.cmd.target matches 12 run return run execute unless items block ~ ~ ~ container.12 *[custom_data~{tess:{if_ui:true}}] run function tess:cmd/pop/12
execute if score @s tess.cmd.target matches 13 run return run execute unless items block ~ ~ ~ container.13 *[custom_data~{tess:{if_ui:true}}] run function tess:cmd/pop/13
execute if score @s tess.cmd.target matches 14 run return run execute unless items block ~ ~ ~ container.14 *[custom_data~{tess:{if_ui:true}}] run function tess:cmd/pop/14
execute if score @s tess.cmd.target matches 15 run return run execute unless items block ~ ~ ~ container.15 *[custom_data~{tess:{if_ui:true}}] run function tess:cmd/pop/15
execute if score @s tess.cmd.target matches 16 run return run execute unless items block ~ ~ ~ container.16 *[custom_data~{tess:{if_ui:true}}] run function tess:cmd/pop/16
execute if score @s tess.cmd.target matches 17 run return run execute unless items block ~ ~ ~ container.17 *[custom_data~{tess:{if_ui:true}}] run function tess:cmd/pop/17
execute if score @s tess.cmd.target matches 18 run return run execute unless items block ~ ~ ~ container.18 *[custom_data~{tess:{if_ui:true}}] run function tess:cmd/pop/18
execute if score @s tess.cmd.target matches 19 run return run execute unless items block ~ ~ ~ container.19 *[custom_data~{tess:{if_ui:true}}] run function tess:cmd/pop/19
execute if score @s tess.cmd.target matches 20 run return run execute unless items block ~ ~ ~ container.20 *[custom_data~{tess:{if_ui:true}}] run function tess:cmd/pop/20
execute if score @s tess.cmd.target matches 21 run return run execute unless items block ~ ~ ~ container.21 *[custom_data~{tess:{if_ui:true}}] run function tess:cmd/pop/21
execute if score @s tess.cmd.target matches 22 run return run execute unless items block ~ ~ ~ container.22 *[custom_data~{tess:{if_ui:true}}] run function tess:cmd/pop/22
execute if score @s tess.cmd.target matches 23 run return run execute unless items block ~ ~ ~ container.23 *[custom_data~{tess:{if_ui:true}}] run function tess:cmd/pop/23
execute if score @s tess.cmd.target matches 24 run return run execute unless items block ~ ~ ~ container.24 *[custom_data~{tess:{if_ui:true}}] run function tess:cmd/pop/24
execute if score @s tess.cmd.target matches 25 run return run execute unless items block ~ ~ ~ container.25 *[custom_data~{tess:{if_ui:true}}] run function tess:cmd/pop/25
execute if score @s tess.cmd.target matches 26 run return run execute unless items block ~ ~ ~ container.26 *[custom_data~{tess:{if_ui:true}}] run function tess:cmd/pop/26

#Fallback
tellraw @a[gamemode=creative] {translate:"tess.error.pop","fallback":"[Tess]运行cmd/pop时错误：无效的槽位（target应在0~26之间）",color:"red"}