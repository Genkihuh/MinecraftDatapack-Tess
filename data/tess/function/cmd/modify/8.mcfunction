execute unless items block ~ ~ ~ container.8 air unless items block ~ ~ ~ container.8 *[custom_data~{tess:{if_ui:true}}] run function tess:cmd/pop/8
execute on passengers if entity @s[tag=tess.imp.current] if items block ~ ~ ~ container.8 air run data modify block ~ ~ ~ Items append from entity @s data.tess.ui_origin.[{Slot:8b}]
function tess:cmd/modify/mdf/8 with storage tess:cmd top
execute on passengers if entity @s[tag=tess.imp.current] run return run data modify entity @s data.tess.ui_origin append from block ~ ~ ~ Items.[{Slot:8b}]
