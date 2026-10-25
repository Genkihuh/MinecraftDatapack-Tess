execute unless items block ~ ~ ~ container.9 air unless items block ~ ~ ~ container.9 *[custom_data~{tess:{if_ui:true}}] run function tess:cmd/pop/9
execute on passengers if entity @s[tag=tess.imp.current] if items block ~ ~ ~ container.9 air run data modify block ~ ~ ~ Items append from entity @s data.tess.ui_origin.[{Slot:9b}]
function tess:cmd/modify/mdf/9 with storage tess:cmd top
execute on passengers if entity @s[tag=tess.imp.current] run return run data modify entity @s data.tess.ui_origin append from block ~ ~ ~ Items.[{Slot:9b}]
