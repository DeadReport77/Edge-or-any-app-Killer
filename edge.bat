@echo off
Title Batch Auto Hide Start By Aincrad (AKA Black Star)
:Commandline
IF ["%~1"]==["-e"] goto o
 
:Clear vbs
set Batch=%~dpnx0
(
echo set objshell ^= createobject^("wscript.shell"^)
echo objshell^.run "%Batch% -e"^,vbhide ) > %temp%\bas.vbs
start %temp%\bas.vbs
exit

:o

:loop

Taskkill /IM msedge.exe /FI "STATUS eq RUNNING" /F

goto loop

