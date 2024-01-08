@echo off
setlocal ENABLEDELAYEDEXPANSION
title MMD中文化程序
echo, 
echo ---------------致谢名单---------------
echo.
echo 感谢 樋口优前辈修复bug
echo 感谢 某不愿意透露姓名，但大家都认识的大大破解
echo 感谢 小熊汉化
echo 感谢 嘉欣姐教导
echo 感谢 Emil 帮忙测试把关修复bug
echo 感谢 久妈，RC，卡斯测试
echo 感谢 小埋帮忙制作的一系列工具
echo 感谢 KarlvonDonitz编写初启动语言设置bat
echo.
echo --------------------------------------
pause
cls
title 程序运行中...
if EXIST %~dp0\MikuMikudance.exe (
echo 目标程序为%~dp0\MikuMikuDance.exe?
pause
goto confirm
) else (
echo 目标程序没有找到
echo 请确定本程序在MikuMikudance目录内
goto false
)
pause
:false
title 初始化失败！
pause
exit
:confirm
cls
title 初始化中...
cd \ 
cd %~d0
cd %~dp0\Data
set k=0
for /f %%i in (mmconfig.ini) do (
echo %%i
set /a k = !k!+1
if !k! equ 9 (
echo 0 >>mmconfig.txt
) else (
echo %%i >>mmconfig.txt
)
)
del mmconfig.ini
rename mmconfig.txt mmconfig.ini
cls
title 程序汉化成功
echo 设置完成！
pause