@echo off
chcp 65001 >nul
setlocal enabledelayedexpansion
:: 脚本放在 functions/cmd/modify 目录运行
set "OUT=%cd%"
md "%OUT%\mdf" 2>nul

:: 生成 cmd/modify/0~26.mcfunction
for /L %%i in (0,1,26) do (
(
echo execute unless items block ~ ~ ~ container.%%i air unless items block ~ ~ ~ container.%%i *[custom_data~{tess:{if_ui:true}}] run function tess:cmd/pop/%%i
echo execute on passengers if entity @s[tag=tess.imp.current] if items block ~ ~ ~ container.%%i air run data modify block ~ ~ ~ Items append from entity @s data.tess.ui_origin.[{Slot:%%ib}]
echo function tess:cmd/modify/mdf/%%i with storage tess:cmd top
echo execute on passengers if entity @s[tag=tess.imp.current] run return run data modify entity @s data.tess.ui_origin append from block ~ ~ ~ Items.[{Slot:%%ib}]
) > "%OUT%\%%i.mcfunction"
)

:: 生成 cmd/modify/mdf/0~26.mcfunction
for /L %%i in (0,1,26) do (
echo $item modify block ~ ~ ~ container.%%i $(source^) > "%OUT%\mdf\%%i.mcfunction"
)

echo ✅ 生成完成
echo - cmd/modify/0~26.mcfunction
echo - cmd/modify/mdf/0~26.mcfunction
pause
