#存储容器坐标于玩家计分板（需要验证可否优化）
$scoreboard players set @s tess.table.x $(x)
$scoreboard players set @s tess.table.y $(y)
$scoreboard players set @s tess.table.z $(z)
#弹出错放进ui界面的物品（需要验证可否减少宏函数读入情况）
$execute positioned $(x) $(y) $(z) as @n[tag=tess.loaded,distance=..0.5] at @s run function tess:slot/pop/$(slot)