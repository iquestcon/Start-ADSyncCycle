@echo off

net session >nul 2>&1
  if %ERRORLEVEL% == 0 (
    echo Syncing to the "cloud" . . .
    powershell.exe -c "Start-ADSyncSyncCycle"
  ) else (
    echo Administrator permissions required
)
pause