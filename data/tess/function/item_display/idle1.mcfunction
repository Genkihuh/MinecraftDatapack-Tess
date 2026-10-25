#移除tess.in_use
tag @s remove tess.in_use

#特判
execute on passengers if entity @s[tag=tess.imp.current,tag=tess.imp.home] run return 1

#缓存非ui物品
execute on passengers if entity @s[tag=tess.imp.current] run function tess:item_display/cache

#重置界面
tag @s add tess.reset_index
execute align xyz on passengers if entity @s[tag=tess.imp.home] run function tess:marker/reset
tag @s remove tess.reset_index

#接口
function #minecraft:tess/closed
