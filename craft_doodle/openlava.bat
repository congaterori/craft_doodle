@echo off
cls
if not "%~1"=="" set input-title=""
if not "%~1"=="" set input-path="%~dp1"
if not "%~1"=="" set input-file="%~nx1"
if not "%~1"=="" echo %input-path%%input-file%>input2.txt
for /f %%a in (input2.txt) do set "line=%%a"
set "line=%line:"=%"
echo %line%
echo %line% > input2.txt
::findstr /m "water.lnk" input2.txt
::if %errorlevel% == 0 goto obsidian
:obsidian
cls
start /min obsidian.bat
Del input2.txt
exit