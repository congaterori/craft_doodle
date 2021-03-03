@echo off
cls
if not "%~1"=="" set input-title=""
if not "%~1"=="" set input-path="%~dp1"
if not "%~1"=="" set input-file="%~nx1"
if not "%~1"=="" echo %input-path%%input-file%>input.txt
for /f %%a in (input.txt) do set "line=%%a"
set "line=%line:"=%"
echo %line%
echo %line% > input.txt
type input.txt
findstr /m "lava.lnk" input.txt
if %errorlevel% == 0 goto obsidian
:obsidian
cls
start /min obsidian.bat
Del input.txt
exit