@ ECHO OFF
set DIR=""
for /f "tokens=*" %%a in ('dir /A:-D /B /O:-D %DIR%') do set NEWEST=%%a&& goto :next
:next
start notepad %NEWEST%
@ ECHO ON