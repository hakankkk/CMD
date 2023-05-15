@echo off

set /p keyword=Enter keyword to search in the registry:

echo Searching for "%keyword%" in the registry...

reg query HKEY_LOCAL_MACHINE /f "%keyword%" /t REG_SZ /s > search_results.txt
reg query HKEY_CURRENT_CONFIG /f "%keyword%" /t REG_SZ /s > search_results2.txt

echo Done. The search results have been saved to search_results.txt.
pause
