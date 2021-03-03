@echo off

set SCRIPT="h.vbs"

echo Set oWS = WScript.CreateObject("WScript.Shell") > h.vbs
echo sLinkFile = "water.lnk" >> h.vbs
echo Set oLink = oWS.CreateShortcut(sLinkFile) >> h.vbs
echo oLink.TargetPath = "C:\Users\%username%\Desktop\craft_doodle\openwater.bat" >> h.vbs
echo oLink.Save >> h.vbs
cscript /nologo h.vbs
Powershell.exe -windowstyle hidden -executionpolicy remotesigned -File water.ps1
del h.vbs
exit