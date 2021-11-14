@gcc Xedit.c -o XOS.exe

@start cmd.exe /c "color 0f && %~dp0\XOS.exe && echo. && echo application returned 0; press any key to exit xcomp. && pause >nul"