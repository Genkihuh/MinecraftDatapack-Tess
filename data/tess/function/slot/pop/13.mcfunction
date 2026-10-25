summon item ~ ~ ~ {Tags:["tess.pop"],Item:{id:"structure_void",components:{item_model:"air"}},PickupDelay:2000}
execute positioned ~ ~ ~ as @n[type=item,tag=tess.pop] run function tess:slot/pop/sm/13
item replace block ~ ~ ~ container.13 with air
execute on passengers if entity @s[tag=tess.imp.current] run function tess:marker/refresh
