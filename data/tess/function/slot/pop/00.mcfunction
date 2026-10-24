#区别于slot/pop/0，没有调用函数"tess:marker/refresh"
#主要是用于加载ui生成器
summon item ~ ~ ~ {Tags:["tess.pop"],Item:{id:"structure_void",components:{item_model:"air"}},PickupDelay:2000}
execute positioned ~ ~ ~ as @e[type=item,tag=tess.pop] run function tess:slot/pop/sm/0
item replace block ~ ~ ~ container.0 with air
