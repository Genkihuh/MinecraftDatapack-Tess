execute unless items block ~ ~ ~ container.22 air unless items block ~ ~ ~ container.22 *[custom_data~{tess:{if_ui:true}}] run function tess:cmd/pop/22
execute on passengers if entity @s[tag=tess.imp.current] if items block ~ ~ ~ container.22 air run data modify block ~ ~ ~ Items append from entity @s data.tess.ui_origin.[{Slot:22b}]
function tess:cmd/modify/mdf/22 with storage tess:cmd top
execute on passengers if entity @s[tag=tess.imp.current] run return run data modify entity @s data.tess.ui_origin append from block ~ ~ ~ Items.[{Slot:22b}]
