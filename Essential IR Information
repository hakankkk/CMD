@echo off

echo Collecting system information...

:: Uptime
systeminfo | findstr /B /C:"System Boot Time" /C:"System Up Time" > system_info.txt

:: Current user
echo Current user: %USERNAME% >> system_info.txt

:: Logged in users
echo Logged in users: >> system_info.txt
query user >> system_info.txt

:: Hostname
echo Hostname: %COMPUTERNAME% >> system_info.txt

:: Platform information
echo Platform information: >> system_info.txt
systeminfo | findstr /B /C:"OS Name" /C:"OS Version" /C:"System Manufacturer" /C:"System Model" /C:"System Type" >> system_info.txt

:: Connected networks
echo Connected networks: >> system_info.txt
ipconfig | findstr /B /C:"Ethernet adapter" /C:"Wireless LAN adapter" >> system_info.txt

:: Architecture
echo Architecture: %PROCESSOR_ARCHITECTURE% >> system_info.txt

:: Essential information for cyber security forensic
echo Essential information for cyber security forensic: >> system_info.txt
netstat -an >> system_info.txt
tasklist /v >> system_info.txt
schtasks /query /v >> system_info.txt

echo Done.
pause
