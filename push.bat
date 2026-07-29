@echo off
cd /d C:\powerbi_project

for /f %%i in ('powershell -NoProfile -Command "Get-Date -Format ''yyyy-MM-dd HH:mm:ss''"') do set MSG=Power BI update %%i

git add -A
git commit -m "%MSG%"
git push origin main

pause