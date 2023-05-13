
@echo off

echo Retrieving browsing history...

rem Prompt user to choose a file location
set /p file=Enter file location to save browsing history URLs (e.g. %USERPROFILE%\Desktop\history.txt):

rem Google Chrome
echo Google Chrome:
type "%USERPROFILE%\AppData\Local\Google\Chrome\User Data\Default\History" | findstr "URL" >> %file%

rem Mozilla Firefox
echo Mozilla Firefox:
type "%APPDATA%\Mozilla\Firefox\Profiles\*.default\places.sqlite" | findstr "moz_places.url" >> %file%

rem Microsoft Edge
echo Microsoft Edge:
type "%LOCALAPPDATA%\Microsoft\Edge\User Data\Default\History" | findstr "URL" >> %file%

echo Done. The browsing history URLs have been saved to %file%.
pause
