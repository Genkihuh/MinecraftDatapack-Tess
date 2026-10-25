execute if entity @s[tag=!tess.in_use] run function #minecraft:tess/opened
execute if entity @s[tag=!tess.in_use] run tag @s add tess.in_use
#接口
function #minecraft:tess/in_use