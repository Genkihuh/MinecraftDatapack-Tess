execute unless items block ~ ~ ~ container.7 air unless items block ~ ~ ~ container.7 *[custom_data~{tess:{if_ui:true}}] run function tess:cmd/pop/7
execute on passengers if entity @s[tag=tess.imp.current] if items block ~ ~ ~ container.7 air run data modify block ~ ~ ~ Items append from entity @s data.tess.ui_origin.[{Slot:7b}]
function tess:cmd/modify/mdf/7 with storage tess:cmd top
execute on passengers if entity @s[tag=tess.imp.current] run return run data modify entity @s data.tess.ui_origin append from block ~ ~ ~ Items.[{Slot:7b}]
