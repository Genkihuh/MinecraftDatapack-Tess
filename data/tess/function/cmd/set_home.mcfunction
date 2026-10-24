#检测是否为本操作
execute if entity @s[tag=!tess.cmd.set_home] run return fail
tag @s remove tess.cmd.set_home

execute on passengers run tag @s[tag=tess.imp.home] remove tess.imp.home
execute on passengers if entity @s[tag=tess.imp.current] run tag @s add tess.imp.home
