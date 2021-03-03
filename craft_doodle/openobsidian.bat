@echo off
cls
if not "%~1"=="" set input-title=""
if not "%~1"=="" set input-path="%~dp1"
if not "%~1"=="" set input-file="%~nx1"
if not "%~1"=="" echo %input-path%%input-file%>input3.txt
for /f %%a in (input2.txt) do set "line=%%a"
set "line=%line:"=%"
echo %line%
echo %line% > input3.txt
findstr /m "tor.lnk" input3.txt
if %errorlevel% == 0 goto portel
:portel
cls
start /min protel.bat
Del input3.txt
exit