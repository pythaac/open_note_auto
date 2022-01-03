@ ECHO OFF
setlocal enabledelayedexpansion

set DIRECOTRY=""
cd %DIRECOTRY%

set /A NUM=2
for /f "tokens=*" %%a in ('dir /A:-D /B /O:-D %DIRECOTRY%') do (
	if !NUM!==0 (
		goto :next
	)
	set /A NUM-=1
	start winword "%%a"
)
:next
@ ECHO ON