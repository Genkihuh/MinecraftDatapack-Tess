@echo off
chcp 65001 >nul
setlocal enabledelayedexpansion

:: 脚本放在 functions/cmd/remove 目录运行
set "REMOVE_DIR=%cd%"

:: ========== 生成 remove/0 ~ remove/26 mcfunction ==========
for /L %%i in (0,1,26) do (
(
echo execute if items block ~ ~ ~ container.%%i *[custom_data~{tess:{if_ui:true}}] run data remove block ~ ~ ~ Items.[{Slot:%%ib}]
echo execute on passengers if entity @s[tag=tess.imp.current] run return run data remove entity @s data.tess.ui_origin.[{Slot:%%ib}]
) > "%%i.mcfunction"
)
echo ✅ remove系列函数生成完毕！
echo 目录：%REMOVE_DIR%
pause
