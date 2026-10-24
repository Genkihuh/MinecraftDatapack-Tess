#移除检测
execute unless block ~ ~ ~ barrel run return run function tess:item_display/remove with entity @s data.tess
#锁漏斗
execute positioned ~ ~-1 ~ if block ~ ~ ~ hopper[enabled=true] run fill ~ ~ ~ ~ ~ ~ hopper[enabled=false]

#检测容器是否被使用
execute if block ~ ~ ~ barrel[open=true] run function tess:item_display/in_use
execute if block ~ ~ ~ barrel[open=false] run function tess:item_display/idle

#接口
function #minecraft:tess/always