summon item ~ ~ ~ {Tags:["tess.pop"],Item:{id:"structure_void",components:{item_model:"air"}},PickupDelay:2000}
execute positioned ~ ~ ~ as @n[type=item,tag=tess.pop] run function tess:slot/pop/sm/17
item replace block ~ ~ ~ container.17 with air
