@echo off
chcp 65001 >nul
set "base=%cd%\pop"
set "sm=%base%\sm"
md "%base%" 2>nul
md "%sm%" 2>nul

for /L %%s in (0,1,26) do (
(
echo summon item ~ ~ ~ {Tags:["tess.pop"],Item:{id:"structure_void",components:{item_model:"air"}},PickupDelay:2000}
echo execute positioned ~ ~ ~ as @n[type=item,tag=tess.pop] run function tess:slot/pop/sm/%%s
echo item replace block ~ ~ ~ container.%%s with air
echo execute on passengers if entity @s[tag=tess.imp.current] run function tess:marker/refresh
) > "%base%\%%s.mcfunction"

(
echo tag @s remove tess.pop
echo item replace entity @s contents from block ~ ~ ~ container.%%s
echo data modify entity @s PickupDelay set value 0
) > "%sm%\%%s.mcfunction"
)

echo 生成完成，输出目录：%base%
pause