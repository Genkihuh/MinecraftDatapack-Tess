#检测是否为本操作
execute if entity @s[tag=!tess.cmd.go_home] run return fail
tag @s remove tess.cmd.go_home

#重置界面
tag @s add tess.reset_index
execute on passengers if entity @s[tag=tess.imp.home] run function tess:marker/reset
tag @s remove tess.reset_index