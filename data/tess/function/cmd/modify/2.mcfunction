execute unless items block ~ ~ ~ container.2 air unless items block ~ ~ ~ container.2 *[custom_data~{tess:{if_ui:true}}] run function tess:cmd/pop/2
execute on passengers if entity @s[tag=tess.imp.current] if items block ~ ~ ~ container.2 air run data modify block ~ ~ ~ Items append from entity @s data.tess.ui_origin.[{Slot:2b}]
function tess:cmd/modify/mdf/2 with storage tess:cmd top
execute on passengers if entity @s[tag=tess.imp.current] run return run data modify entity @s data.tess.ui_origin append from block ~ ~ ~ Items.[{Slot:2b}]
