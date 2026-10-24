execute unless items block ~ ~ ~ container.18 air unless items block ~ ~ ~ container.18 *[custom_data~{tess:{if_ui:true}}] run function tess:cmd/pop/18
execute on passengers if entity @s[tag=tess.imp.current] if items block ~ ~ ~ container.18 air run data modify block ~ ~ ~ Items append from entity @s data.tess.ui_origin.[{Slot:18b}]
function tess:cmd/modify/mdf/18 with storage tess:cmd top
execute on passengers if entity @s[tag=tess.imp.current] run return run data modify entity @s data.tess.ui_origin append from block ~ ~ ~ Items.[{Slot:18b}]
