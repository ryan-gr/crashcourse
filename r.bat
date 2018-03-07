@echo off
for /f "tokens=1-4 delims=/ " %%i in ("%date%") do (
     set dow=%%i
     set month=%%j
     set day=%%k
     set year=%%l
)
for /f "tokens=1,2 delims=: " %%i in ("%time%") do (
     set hour=%%i
     set sec=%%j
)
set a=%day%%month%%year%-%hour%%sec%

if '%~1'=='new' (
	c:\python36\pythonw.exe c:\python36\lib\idlelib\idle.py c:\users\ryany\testinggrounds\%a%.py

) else if '%~1'=='i' (
	pushd c:\users\ryany\testinggrounds 
	c:\python36\python.exe

) else if '%~1'=='save' (
	echo Saving test file..
	ren c:\users\ryany\testinggrounds\test.py %a%-saved.py
	echo Done

) else (
	c:\python36\pythonw.exe c:\python36\lib\idlelib\idle.py c:\users\ryany\testinggrounds\test.py

)

set a=
set dow=
set month=
set day=
set year=
set hour=
set sec=