execute unless items block ~ ~ ~ container.19 air unless items block ~ ~ ~ container.19 *[custom_data~{tess:{if_ui:true}}] run function tess:cmd/pop/19
execute on passengers if entity @s[tag=tess.imp.current] if items block ~ ~ ~ container.19 air run data modify block ~ ~ ~ Items append from entity @s data.tess.ui_origin.[{Slot:19b}]
function tess:cmd/modify/mdf/19 with storage tess:cmd top
execute on passengers if entity @s[tag=tess.imp.current] run return run data modify entity @s data.tess.ui_origin append from block ~ ~ ~ Items.[{Slot:19b}]
