summon item ~ ~ ~ {Tags:["tess.pop"],Item:{id:"structure_void",components:{item_model:"air"}},PickupDelay:2000}
execute positioned ~ ~ ~ as @n[type=item,tag=tess.pop] run function tess:slot/pop/sm/19
item replace block ~ ~ ~ container.19 with air
