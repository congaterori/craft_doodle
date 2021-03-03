# Create a Shortcut with Windows PowerShell
$SourceFileLocation = "C:\Users\DELL\Desktop\craft_doodle\openwater.bat"
$ShortcutLocation = "C:\Users\DELL\Desktop\craft_doodle\water.lnk"
#New-Object : Creates an instance of a Microsoft .NET Framework or COM object.
#-ComObject WScript.Shell: This creates an instance of the COM object that represents the WScript.Shell for invoke CreateShortCut
$WScriptShell = New-Object -ComObject WScript.Shell
$Shortcut = $WScriptShell.CreateShortcut($ShortcutLocation)
$Shortcut.TargetPath = $SourceFileLocation
$Shortcut.IconLocation = "C:\Users\DELL\Desktop\craft_doodle\Microsoft_Edge_logo.ico"
#Save the Shortcut to the TargetPath
$Shortcut.Save()