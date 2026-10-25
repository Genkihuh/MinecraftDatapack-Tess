tp @s ~ ~ ~
tellraw @a[gamemode=creative] [{"text":"[Tess] Pos:",color:"red"},{entity:"@s",nbt:"Pos"},"\n",{translate:"tess.error.no_home",fallback:"错误：marker实体的容器参数里缺少参数\"home（为一个loot_table）。\""}]
kill @s
