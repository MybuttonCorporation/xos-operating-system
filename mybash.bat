@:          Mybutton Corporation : 2021
@:        All rights reserved.
color 4
Assoc .mbsh=bashfile
Ftype bashfile="C:\windows\system32\cmd.exe" "/c %*"
@title MyBash --login SYSTEM
@echo off
@cls
@chcp 65001
@cls
:top
for %%i in (%CD%) do set NEWDIR=%%~ni
colorful -s "%username%@%computername% " -f 2
colorful -s "MyBash " -f 5
colorful -s "~/%NEWDIR%" -f 6 -n
colorful -s "-------------------------------------------------" -f 12 -n
colorful -s "use '/bash ~e cmd' to return to windows cmd.\nuse /bash ~a help to get a list of commands." -f 5 -n -e
colorful -s "-------------------------------------------------" -f 12 -n
colorful -s "$ " -f 3
@title MyBash 
set/p"choice="
if "%choice%"=="/bash ~e cmd" goto cmdlol
if "%choice%"=="/bash ~a help" goto help
if "%choice%"=="/bash ~e script" goto run
if "%choice%"=="/bash ~e restart" goto restart
colorful -s "-------------------------------------------------" -f 12 -n
colorful -s "Unknown Command." -f 5 -n
colorful -s "-------------------------------------------------" -f 12 -n
timeout 2 /nobreak >nul
goto :top
:cmdlol
for %%i in (%CD%) do set NEWDIR=%%~ni
@echo on
set text="%username%@%computername%"
set textt=" MyBash"
set texttt=" ~/%NEWDIR%"
@cmd.exe /k "@cls && @colorful -s %text% -f 2 && @colorful -s %textt% -f 5 && @colorful -s %texttt% -f 6"

:help
@cls
colorful -s "$ " -f 5
colorful -s "%username%@%computername%" -f 2
colorful -s " ~/Desktop" -f 6 -n
colorful -s "-------------------------------------------------" -f 12 -n
colorful -s "\n/bash ~e | run a command with elevated permissions\n/bash ~a | Run a command normally\n/bash ~b | Run a command with background service \n/bash ~c | Run a command with command-loading enabled.\n" -e
colorful -s "-------------------------------------------------" -f 12 -n
goto :top

:run
@cls -s 1980x1280
colorful -s "mybash@MYBASH.SYS" -f 2
colorful -s " /bash ~e script" -f 5
colorful -s " ~/Enter Script Path [C:\test\test.mbsh]" -f 6 -n 
colorful -s "$ " -f 3 
set /p"script="
if exist "%script%" (
copy "%~dp0\colorful.exe" "%temp%\colorful.exe" >nul
copy "%~dp0\log.bat" "%temp%\log.bat" >nul
copy "%script%" "%temp%\MyBash_current.bat" >nul
cmd.exe /c "%temp%\MyBash_current.bat"
RD /S /Q "%temp%"
@cls
goto top


)
colorful -s "-------------------------------------------------" -f 12 -n
colorful -s "Invalid Script Path - This file does not exist." -f 5 -n
colorful -s "-------------------------------------------------" -f 12 -n
timeout 2 /nobreak >nul
goto :top
:restart
@cls
@: Mybutton.restart();
@: sec: 5, ls: 5, timeout: NULL;
colorful -s "%username%@%computername%" -f 2
colorful -s " Restarting MyBash in 3..." -f 5
colorful -s " ~/%NEWDIR%" -n
timeout 1 >NUL
@cls
@: Mybutton.restart();
@: sec: 5, ls: 5, timeout: NULL;
colorful -s "%username%@%computername%" -f 2
colorful -s " Restarting MyBash in 2..." -f 5
colorful -s " ~/%NEWDIR%" -n
timeout 1 >NUL
@cls
@: Mybutton.restart();
@: sec: 5, ls: 5, timeout: NULL;
colorful -s "%username%@%computername%" -f 2
colorful -s " Restarting MyBash in 1..." -f 5
colorful -s " ~/%NEWDIR%" -n
timeout 1 >NUL
@cls
@: Mybutton.restart();
@: sec: 5, ls: 5, timeout: NULL;
colorful -s "%username%@%computername%" -f 2
colorful -s " Restarting MyBash in 0..." -f 5
colorful -s " ~/%NEWDIR%" -n
timeout 1 >NUL
start %~dp0\bash.lnk