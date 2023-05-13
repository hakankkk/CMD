@echo off

echo Collecting scheduled task information...

for /f "skip=2 tokens=1,2 delims=," %%a in ('schtasks /query /fo csv') do (
  set task_name=%%a
  set task_creator=%%b
  if not "!task_creator!"=="N/A" (
    echo Task name: !task_name!
    echo Created by: !task_creator!
    echo Task details:
    schtasks /query /tn !task_name! /v /fo list
    echo.
  )
)

echo Done.
pause
