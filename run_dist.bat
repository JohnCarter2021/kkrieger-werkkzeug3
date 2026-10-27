@echo off
REM kkrieger-stock-test run-only launcher.
REM Unzip, double-click this file. No Visual Studio, no build step.
REM The player takes the data file as its command-line argument, so
REM this file must stay in the same folder as kkrieger3383.kx.
cd /d "%~dp0"
if not exist "player_kkrieger.exe" (
  echo player_kkrieger.exe not found in this folder.
  pause
  exit /b 1
)
if not exist "kkrieger3383.kx" (
  echo kkrieger3383.kx not found in this folder.
  pause
  exit /b 1
)
echo Starting kkrieger stock test at 800x600...
echo Stock textures, so load should be like the original..
player_kkrieger.exe kkrieger3383.kx
echo.
echo Game exited with code %ERRORLEVEL%.
pause
