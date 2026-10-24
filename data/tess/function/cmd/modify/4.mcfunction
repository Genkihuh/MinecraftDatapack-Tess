execute unless items block ~ ~ ~ container.4 air unless items block ~ ~ ~ container.4 *[custom_data~{tess:{if_ui:true}}] run function tess:cmd/pop/4
execute on passengers if entity @s[tag=tess.imp.current] if items block ~ ~ ~ container.4 air run data modify block ~ ~ ~ Items append from entity @s data.tess.ui_origin.[{Slot:4b}]
function tess:cmd/modify/mdf/4 with storage tess:cmd top
execute on passengers if entity @s[tag=tess.imp.current] run return run data modify entity @s data.tess.ui_origin append from block ~ ~ ~ Items.[{Slot:4b}]
