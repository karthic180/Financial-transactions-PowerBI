@echo off
title Push Financial Transactions Power BI to GitHub
color 0A

echo ========================================================
echo   Pushing Financial Transactions Power BI to GitHub...
echo ========================================================

cd /d "%~dp0"

echo [1/5] Fetching latest changes from remote repository...
git pull origin main --rebase

echo.
echo [2/5] Staging all changed files...
git add .

echo.
echo [3/5] Committing changes...
set /p commit_msg="Enter your commit message (or press Enter for default): "
if "%commit_msg%"=="" (
    git commit -m "Update Financial Transactions Power BI files and pbix"
) else (
    git commit -m "%commit_msg%"
)

echo.
echo [4/5] Pushing to remote repository (origin main)...
git push origin main

echo ========================================================
echo   Upload completed successfully!
echo ========================================================
pause