$loot spawn ~ ~ ~ loot $(machine_loot)

execute if block ~ ~ ~ barrel run setblock ~ ~ ~ air destroy
execute on passengers run function tess:marker/removed_by_machine

#执行破坏事件
$$(destroy_event)

#清除带有tess.fixed_name翻译键的木桶掉落物
kill @n[type=item,nbt={Item:{id:"minecraft:barrel",components:{"minecraft:custom_name":{translate:"tess:fixed_name"}}}}]

kill @s