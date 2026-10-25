execute if items block ~ ~ ~ container.12 *[custom_data~{tess:{if_ui:true}}] run data remove block ~ ~ ~ Items.[{Slot:12b}]
execute on passengers if entity @s[tag=tess.imp.current] run return run data remove entity @s data.tess.ui_origin.[{Slot:12b}]
