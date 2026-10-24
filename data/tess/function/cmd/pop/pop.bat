@echo off
chcp 65001 >nul
set "base=%cd%"
set "sm=%base%\sm"
md "%base%" 2>nul
md "%sm%" 2>nul

for /L %%s in (0,1,26) do (
(
echo summon item ~ ~ ~ {Tags:["tess.pop"],Item:{id:"structure_void",components:{item_model:"air"}},PickupDelay:2000}
echo execute positioned ~ ~ ~ as @n[type=item,tag=tess.pop] run function tess:slot/pop/sm/%%s
echo item replace block ~ ~ ~ container.%%s with air
) > "%base%\%%s.mcfunction"

)

echo 生成完成，输出目录：%base%
pause