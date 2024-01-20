@echo off
setlocal

rem 设置导出文件的路径，保存在脚本所在的目录
set ExportFile=%~dp0ImportPCL2.reg

rem 使用reg export命令导出注册表
reg export HKEY_CURRENT_USER\SOFTWARE\PCL "%ExportFile%"

echo 注册表导出完成：%ExportFile%
pause
