@echo off  
:start  
cls  
echo               MMDer常用网址链接 
echo,  
echo        1   MikuMikuDance贴吧
echo        2   哔哩哔哩 (゜-゜)つロ 干杯~-bilibili
echo        3   bowlroll   [B站]
echo        4   deviantart [D站]
echo        5   插画交流网站[pixiv]
echo.
echo   ---------------高阶资源站--------------  
echo.
echo        6   pmxeditor 插件配布介绍页
echo        7   mme特效配布介绍页
echo        8   一般配布物
echo.
echo   ----------------------------------------
echo        9 MikuMikuDance官网 （更新）
echo,  
echo        0 退出  
  
set/p a=请选择：  
if %a%==1 start "" "http://tieba.baidu.com/f?kw=mikumikudance&fr=ala0&tpl=5" 

if %a%==2 start "" "https://www.bilibili.com/" 

if %a%==3 start "" "https://bowlroll.net/" 

if %a%==4 start "" "https://www.deviantart.com/" 
  
if %a%==5 start "" "https://www.pixiv.net/" 
  
if %a%==6 start "" "https://www6.atwiki.jp/vpvpwiki/pages/228.html" 

if %a%==7 start "" "https://www6.atwiki.jp/vpvpwiki/pages/272.html" 

if %a%==8 start "" "https://www6.atwiki.jp/vpvpwiki/pages/13.html" 

if %a%==9 start "" "http://www.geocities.jp/higuchuu4/" 

if %a%==39 start "" "http://blog.psocafe.com/"

if %a%==0 goto end  
goto start  
:end  