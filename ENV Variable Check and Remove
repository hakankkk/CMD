@echo off

set /p appName=Enter application name: 

for /f "tokens=2,*" %%a in ('set') do (
    if /i "%%a"=="%appName%" (
        set "found=true"
        set "varName=%%a"
    )
)

if defined found (
    set /p remove=%appName% is in the environment variables. Do you want to remove it? (y/n)

    if /i "%remove%"=="y" (
        setx %varName% ""
        echo %appName% removed from environment variables.
    ) else (
        echo %appName% not removed from environment variables.
    )
) else (
    echo %appName% not found in environment variables.
)
