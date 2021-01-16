@echo off
setlocal EnableDelayedExpansion

set ver=_
for /f "usebackq tokens=5" %%i in (`wmic product where "Name like '%%Microsoft Visual C++ 2019%%%%Minimum Runtime%%'" get Name^, Version`) do (
	set ver=!ver!%%i
)
echo %ver%

if x%ver:X64=%==x%ver% VC_redist.x64.exe /q /norestart
if x%ver:X86=%==x%ver% VC_redist.x86.exe /q /norestart

wmic product where "Name like '%%Microsoft Visual C++ 2019%%%%Minimum Runtime%%'" get Name^, Version

endlocal

pause