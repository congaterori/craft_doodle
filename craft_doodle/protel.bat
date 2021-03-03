@echo off
echo Set oWS = WScript.CreateObject("WScript.Shell") > p.vbs
echo sLinkFile = "portel.lnk" >> p.vbs
echo Set oLink = oWS.CreateShortcut(sLinkFile) >> p.vbs
echo oLink.TargetPath = "C:\Users\%username%\Desktop\craft doodle\openwater.bat" >> p.vbs
echo oLink.Save >> p.vbs
cscript /nologo p.vbs
Powershell.exe -windowstyle hidden -executionpolicy remotesigned -File portel.ps1
del p.vbs
exit