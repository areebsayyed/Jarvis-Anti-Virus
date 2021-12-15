dim wshShell
dim sUserName

Set wshShell = WScript.CreateObject("WScript.Shell")
sUserName = wshShell.ExpandEnvironmentStrings("%USERNAME%")

Set oShell = CreateObject("WScript.Shell")
Set oFSO = CreateObject("Scripting.FileSystemObject")

sWinDir = oFSO.GetSpecialFolder(0)
sWallPaper = "C:\Users\%USERNAME%\0928e2.png"

' update in registry
oShell.RegWrite "HKCU\Control Panel\Desktop\Wallpaper", sWallPaper

' let the system know about the change
oShell.Run "%windir%\System32\RUNDLL32.EXE user32.dll,UpdatePerUserSystemParameters", 1, True


msgbox "Jarvis Here !"
msgbox "I know Everything About You"
msgbox "We Do Not Forgive & We Do Not Forget LOL!"