REM This is for all the times I've been annoyed that Lab computers have show file extensions disabled. Enjoy lol.
Press F5 after running to refresh current dir.

@ECHO OFf
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced /v HideFileExt /t REG_DWORD /d 0 /f
:: taskkill /F /IM explorer.exe & start explorer
:: $wshell.SendKeys('^{F5}')