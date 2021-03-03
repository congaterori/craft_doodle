@echo off
cls
echo Set oWS = WScript.CreateObject("WScript.Shell") > o.vbs
echo sLinkFile = "obsidian.lnk" >> o.vbs
echo Set oLink = oWS.CreateShortcut(sLinkFile) >> o.vbs
echo oLink.TargetPath = "C:\Users\%username%\Desktop\craft_doodle\openobsidian.bat" >> o.vbs
echo oLink.Save >> o.vbs
cscript /nologo o.vbs
Powershell.exe -windowstyle hidden -executionpolicy remotesigned -File obsidian.ps1
del o.vbs
exit