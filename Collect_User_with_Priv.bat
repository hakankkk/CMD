@echo off

echo Extracting user accounts...

for /f "skip=4 tokens=*" %%a in ('net user') do (
  set line=%%a
  setlocal enabledelayedexpansion
  if "!line:~0,1!"==" " (
    set account=!line:~1!
    echo !account!
    net user !account! | findstr /B /C:"Account active" /C:"Account expires" /C:"Password expires" /C:"Local Group Memberships" /C:"Global Group memberships" /C:"*"
  )
  endlocal
)

echo Done.
pause
