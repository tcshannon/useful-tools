::
::         /\    \                  /\    \                  /\    \                  /\    \                  /\    \                  /\    \         
::        /::\    \                /::\    \                /::\    \                /::\    \                /::\____\                /::\    \        
::       /::::\    \              /::::\    \              /::::\    \              /::::\    \              /::::|   |               /::::\    \       
::      /::::::\    \            /::::::\    \            /::::::\    \            /::::::\    \            /:::::|   |              /::::::\    \      
::     /:::/\:::\    \          /:::/\:::\    \          /:::/\:::\    \          /:::/\:::\    \          /::::::|   |             /:::/\:::\    \     
::    /:::/__\:::\    \        /:::/__\:::\    \        /:::/__\:::\    \        /:::/  \:::\    \        /:::/|::|   |            /:::/__\:::\    \    
::   /::::\   \:::\    \      /::::\   \:::\    \      /::::\   \:::\    \      /:::/    \:::\    \      /:::/ |::|   |           /::::\   \:::\    \   
::  /::::::\   \:::\    \    /::::::\   \:::\    \    /::::::\   \:::\    \    /:::/    / \:::\    \    /:::/  |::|___|______    /::::::\   \:::\    \  
:: /:::/\:::\   \:::\____\  /:::/\:::\   \:::\    \  /:::/\:::\   \:::\    \  /:::/    /   \:::\ ___\  /:::/   |::::::::\    \  /:::/\:::\   \:::\    \ 
::/:::/  \:::\   \:::|    |/:::/__\:::\   \:::\____\/:::/  \:::\   \:::\____\/:::/____/     \:::|    |/:::/    |:::::::::\____\/:::/__\:::\   \:::\____\
::\::/   |::::\  /:::|____|\:::\   \:::\   \::/    /\::/    \:::\  /:::/    /\:::\    \     /:::|____|\::/    / ~~~~~/:::/    /\:::\   \:::\   \::/    /
:: \/____|:::::\/:::/    /  \:::\   \:::\   \/____/  \/____/ \:::\/:::/    /  \:::\    \   /:::/    /  \/____/      /:::/    /  \:::\   \:::\   \/____/ 
::       |:::::::::/    /    \:::\   \:::\    \               \::::::/    /    \:::\    \ /:::/    /               /:::/    /    \:::\   \:::\    \     
::       |::|\::::/    /      \:::\   \:::\____\               \::::/    /      \:::\    /:::/    /               /:::/    /      \:::\   \:::\____\    
::       |::| \::/____/        \:::\   \::/    /               /:::/    /        \:::\  /:::/    /               /:::/    /        \:::\   \::/    /    
::       |::|  ~|               \:::\   \/____/               /:::/    /          \:::\/:::/    /               /:::/    /          \:::\   \/____/     
::       |::|   |                \:::\    \                  /:::/    /            \::::::/    /               /:::/    /            \:::\    \         
::       \::|   |                 \:::\____\                /:::/    /              \::::/    /               /:::/    /              \:::\____\        
::        \:|   |                  \::/    /                \::/    /                \::/____/                \::/    /                \::/    /        
::         \|___|                   \/____/                  \/____/                  ~~                       \/____/                  \/____/         
::
REM **HIDE WINDOWS SEARCH IN TASKBAR**
REM This search bar is unecessary to have, as you can just type WIN+S or just open the start menu
REM 	and start typing to search for a program normally.
@ECHO OFF
reg add HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Search /v SearchBoxTaskbarMode /t REG_DWORD /d 0 /f


REM **HIDE TASK VIEW BUTTON**
REM This button has no reason to exist when you can just do WIN+TAB.
:: @ECHO OFF
reg add HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced /v ShowTaskViewButton /t REG_DWORD /d 0 /f


REM **HIDE NEWS AND INTERESTS**
REM This should disable the dumb "news and interests" in the taskbar. Who even uses this???
:: @ECHO OFF
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Feeds /v ShellFeedsTaskbarViewMode /t REG_DWORD /d 2 /f

REM **SHOW FILE EXTENSIONS**
REM This is for all the times I've been annoyed that Lab computers have show file extensions disabled. Enjoy lol.
REM Press F5 after running to refresh current dir.
:: @ECHO OFF
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced /v HideFileExt /t REG_DWORD /d 0 /f


REM **RESTARTS WINDOWS EXPLORER**
REM This is necessary for a few parts of this script, but just comment this out of you don't want it.
taskkill /F /IM explorer.exe & start explorer