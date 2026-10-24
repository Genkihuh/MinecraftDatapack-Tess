#检测ui物品是否改变位置
execute if items entity @s container.* *[custom_data~{tess:{comp_data:{loaded:true}}}] run function tess:player/find/inventory
execute if items entity @s player.cursor *[custom_data~{tess:{comp_data:{loaded:true}}}] run function tess:player/cursor
execute if items entity @s weapon.offhand *[custom_data~{tess:{comp_data:{loaded:true}}}] run function tess:player/offhand
execute as @e[type=item,distance=..8] if items entity @s contents *[custom_data~{tess:{comp_data:{loaded:true}}}] run function tess:player/find/item
