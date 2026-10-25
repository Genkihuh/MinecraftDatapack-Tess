@echo off
chcp 65001 >nul
setlocal enabledelayedexpansion
:: 脚本放在 functions/cmd/add 目录下运行
set "ADD=%cd%"
set "ADDLT=%ADD%\lt"
set "ADDMDF=%ADD%\mdf"
md "%ADDLT%" 2>nul
md "%ADDMDF%" 2>nul
:: ========== 生成 tess:cmd/add/& (0~26) ==========
for /L %%i in (0,1,26) do (
(
echo function tess:cmd/add/lt/%%i with storage tess:cmd top
echo function tess:cmd/add/mdf/%%i with storage tess:cmd_temp
echo execute on passengers if entity @s[tag=tess.imp.current] run return run data modify entity @s data.tess.ui_origin append from block ~ ~ ~ Items.[{Slot:%%ib^}]
) > "%%i.mcfunction"
)
:: ========== 生成 tess:cmd/add/lt/& (0~26) ==========
for /L %%i in (0,1,26) do (
echo $loot replace block ~ ~ ~ container.%%i loot $(source^) > "%ADDLT%\%%i.mcfunction"
)
:: ========== 生成 tess:cmd/add/mdf/& (0~26) ==========
for /L %%i in (0,1,26) do (
echo $item modify block ~ ~ ~ container.%%i {type:"set_custom_data",tag:{tess:{comp_data:{loaded:true,x:$(x^),y:$(y^),z:$(z^),slot:%%ib^}^}^}^} > "%ADDMDF%\%%i.mcfunction"
)
echo ✅ 生成完成
echo 当前目录：%ADD%
echo lt、mdf子文件夹已创建
pause
