@echo off
cls
if not "%~1"=="" set input-title=""
if not "%~1"=="" set input-path="%~dp1"
if not "%~1"=="" set input-file="%~nx1"
if not "%~1"=="" echo %input-path%%input-file%>input4.txt
for /f %%a in (input4.txt) do set "line=%%a"
set "line=%line:"=%"
echo %line%
echo %line% > input4.txt
::findstr /m "tor.lnk" input4.txt
::if %errorlevel% == 0 goto tor
:tor
cls
start /min tor.bat
Del input4.txt
exit