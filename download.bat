@echo off

if not exist vc_redist.x86.exe powershell -command "Invoke-WebRequest https://aka.ms/vs/16/release/vc_redist.x86.exe -OutFile vc_redist.x86.exe"
if not exist vc_redist.x64.exe powershell -command "Invoke-WebRequest https://aka.ms/vs/16/release/vc_redist.x64.exe -OutFile vc_redist.x64.exe"

echo Download vc_redist success

pause