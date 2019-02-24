setlocal
set _source=C:\Log
set _dest=C:\Log_arh
set _zipath=c:\Program Files\7-zip
if not exist %_dest% md %_dest%
for %%I in (%_source%\*.log) do "%_zipath%\7z" a "%_dest%\%%~nI.7z" "%%I"
move %_dest%\*.7z Q:\Log
endlocal