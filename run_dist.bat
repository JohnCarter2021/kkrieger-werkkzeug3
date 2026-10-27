@echo off
REM kkrieger-remaster-v2 run-only launcher.
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
echo Starting kkrieger-remaster-v2 at 1920x1080 fullscreen...
echo Expect a longer load than the original: textures generate at double size.
player_kkrieger.exe kkrieger3383.kx
echo.
echo Game exited with code %ERRORLEVEL%.
pause
