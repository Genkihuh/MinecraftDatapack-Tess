@echo off
setlocal enabledelayedexpansion

for /L %%i in (0,1,26) do (
    (
echo $loot replace block ~ ~ ~ container.%%i 1 loot $(I^)
    ) > %%i.mcfunction
)
echo 已生成 0~26.mcfunction 在当前文件夹
pause