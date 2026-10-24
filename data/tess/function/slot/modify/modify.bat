@echo off
chcp 65001 >nul
if not exist sm mkdir sm

for /L %%i in (0,1,35) do (
    (
echo tag @s add tess.player.update_slot
echo execute summon item_display run function tess:slot/modify/sm/%%i
echo function tess:slot/modify with entity @n[tag=tess.temp.update_slot,limit=1] item.components."minecraft:custom_data".tess.comp_data
echo item replace entity @s container.%%i with air
echo kill @n[tag=tess.temp.update_slot,limit=1]
    ) > %%i.mcfunction

    (
echo tag @s add tess.temp.update_slot
echo item replace entity @s contents from entity @p[tag=tess.player.update_slot,limit=1] container.%%i
    ) > sm\%%i.mcfunction
)
echo 生成完毕
pause
