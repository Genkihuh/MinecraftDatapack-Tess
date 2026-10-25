#本函数执行实体：用于加载自定义容器的marker

#延迟死亡
#execute if entity @s[tag=tess.to_be_killed] run return run function tess:general/delayed_kill

#缓存
data modify storage tess:temp marker set from entity @s data.tess
#锁漏斗
execute positioned ~ ~-1 ~ if block ~ ~ ~ hopper[enabled=true] run fill ~ ~ ~ ~ ~ ~ hopper[enabled=false]
#召唤展示实体并初始化
execute summon item_display run function tess:item_display/display with storage tess:temp marker
#清除自己
kill @s