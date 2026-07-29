@echo off
cd /d "%~dp0"

set /p msg=Commit message: 
if "%msg%"=="" set msg=Update

git add -A
git commit -m "%msg%"
git push origin main

pause