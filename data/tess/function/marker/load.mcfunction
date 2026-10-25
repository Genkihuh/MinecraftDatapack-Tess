#本函数执行实体：用于加载自定义容器的marker

#延迟死亡
#execute if entity @s[tag=tess.to_be_killed] run return run function tess:general/delayed_kill


#缓存
data remove storage tess:temp marker
data modify storage tess:temp marker set from entity @s data.tess

#Home必须填入
execute unless data storage tess:temp marker.home align xyz run return run function tess:marker/error

#填入未填选项
execute unless data storage tess:temp marker.model run data modify storage tess:temp marker.model set value "fletching_table"
execute unless data storage tess:temp marker.machine_loot run data modify storage tess:temp marker.machine_loot set value "blocks/cherry_leaves"
execute unless data storage tess:temp marker.machine_name run data modify storage tess:temp marker.machine_name set value ""
execute unless data storage tess:temp marker.place_event run data modify storage tess:temp marker.place_event set value "scoreboard players set #tess.null tess.null 0"
execute unless data storage tess:temp marker.destroy_event run data modify storage tess:temp marker.destroy_event set value "scoreboard players set #tess.null tess.null 0"
execute unless data storage tess:temp marker.open_sound run data modify storage tess:temp marker.open_sound set value "intentionally_empty"
execute unless data storage tess:temp marker.close_sound run data modify storage tess:temp marker.close_sound set value "intentionally_empty"
execute unless data storage tess:temp marker.tags run data modify storage tess:temp marker.tags set value ""

execute if data storage tess:temp marker.brightness unless data storage tess:temp marker.brightness.block run data modify storage tess:temp marker.brightness.block set value 15
execute if data storage tess:temp marker.brightness unless data storage tess:temp marker.brightness.sky run data modify storage tess:temp marker.brightness.sky set value 15
execute unless data storage tess:temp marker.brightness run data modify storage tess:temp marker.brightness set value {block:15,sky:15}

#锁漏斗
execute positioned ~ ~-1 ~ if block ~ ~ ~ hopper[enabled=true] run fill ~ ~ ~ ~ ~ ~ hopper[enabled=false]
#召唤展示实体并初始化
execute summon item_display run function tess:item_display/display with storage tess:temp marker
#清除自己
kill @s