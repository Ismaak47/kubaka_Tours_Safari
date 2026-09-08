@echo off
setlocal
cd /d "%~dp0"
where python >nul 2>&1
if errorlevel 1 (
  echo Python is required to open this site with working videos.
  pause
  exit /b 1
)
start "Kubaka Tours local server" /b python -m http.server 8765
start "Kubaka Tours & Safari" http://127.0.0.1:8765/index.html
