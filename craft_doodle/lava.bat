@echo off
cls
echo Set oWS = WScript.CreateObject("WScript.Shell") > l.vbs
echo sLinkFile = "lava.lnk" >> l.vbs
echo Set oLink = oWS.CreateShortcut(sLinkFile) >> l.vbs
echo oLink.TargetPath = "C:\Users\%username%\Desktop\craft_doodle\openlava.bat" >> l.vbs
echo oLink.Save >> l.vbs
cscript /nologo l.vbs
Powershell.exe -windowstyle hidden -executionpolicy remotesigned -File lava.ps1
del l.vbs
exit