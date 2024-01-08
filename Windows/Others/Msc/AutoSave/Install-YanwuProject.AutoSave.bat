@ECHO OFF
set BASEDIR=HKEY_LOCAL_MACHINE\SOFTWARE\VOCALOID4\COMMON
set POLIDIR=HKEY_LOCAL_MACHINE\SOFTWARE\POCALOID4\COMMON
goto checkUAC
:menu
cls
echo ========================================================
echo       YanwuProject Plugin Installer For Windows      
echo                     Event Menu                        
echo ========================================================
echo Support Vocaloid Editor Version: 4.3.0
echo ========================================================
echo    1.Install Vocaloid Editor AutoSave Plugin           
echo    2.Install Vocaloid Editor FreeEdition AutoSave Plugin        
echo    3.UnInstall Vocaloid Editor AutoSave Plugin                       
echo    4.UnInstall Vocaloid Editor FreeEdition AutoSave Plugin     
echo    0.Exit Menu                                         
echo ========================================================
echo Default choice is 1,Press Space to continue directly
set /p mnk=Please Input your Choice [1..4] and Press Enter:
if %mnk% equ 1 goto db_installL
if %mnk% equ 2 goto db_installF
if %mnk% equ 3 goto db_UninstallL
if %mnk% equ 4 goto db_UninstallF
if %mnk% equ 0 goto enptr
goto menu
:db_installL
set PDIR=%BASEDIR%
goto db_install
:db_installF
set PDIR=%POLIDIR%
goto db_install
:db_install
set HostFile=%~dp0\YanwuProject.PluginHost.dll
set PluginFile=%~dp0\YanwuProject.AutoSave.dll

for /f "tokens=2*" %%i in ('reg query "%PDIR%" /v "ROOT_PATH" /reg:32') do set V_Path=%%j
set PluginHost=%V_Path%\YanwuProject.PluginHost.dll
set PluginPath=%V_Path%\YanwuProject.AutoSave.dll
set PluginList=%V_Path%\Plugins.txt
copy /y "%HostFile%" "%PluginHost%"
copy /y "%PluginFile%" "%PluginPath%"
reg ADD "%PDIR%\LANGUAGE\9050" /F /v "g2pa" /T REG_SZ /D "%PluginHost%" /reg:32
type "%PluginList%" | findstr "YanwuProject.AutoSave.dll" && ( echo yes ) || ( echo YanwuProject.AutoSave.dll >> "%PluginList%" )
cls
echo AutoSave Plugin is Installed
@pause
goto menu

:db_uninstallL
set PDIR=%BASEDIR%
goto db_uninstall
:db_uninstallF
set PDIR=%POLIDIR%
goto db_uninstall
:db_uninstall
reg DELETE "%PDIR%\LANGUAGE\9050" /F /reg:32
cls
echo AutoSave Plugin is UnInstalled
@pause
goto menu

:checkUAC
set TempFile_Name=%SystemRoot%\System32\BatTestUACin_SysRt%Random%.batemp
( echo "BAT Test UAC in Temp" >%TempFile_Name% ) 1>nul 2>nul
if exist %TempFile_Name% (
	set IsUAC=1
) else (
	set IsUAC=0
	echo "Please Right-Click this file and select Run As Administrator!"
	pause
	goto enptr
)
del %TempFile_Name%
if "%IsUAC%"=="1" goto menu

:enptr
