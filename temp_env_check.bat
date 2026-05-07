@echo off
setlocal
set PATH=%USERPROFILE%\.cargo\bin;%PATH%
call "C:\Program Files (x86)\Microsoft Visual Studio\2022\BuildTools\VC\Auxiliary\Build\vcvarsall.bat" x64 >nul
where cargo
where link.exe
echo LIB=%LIB%
echo INCLUDE=%INCLUDE%
echo WindowsSdkDir=%WindowsSdkDir%
echo UniversalCRTSdkDir=%UniversalCRTSdkDir%
echo WindowsSDKVersion=%WindowsSDKVersion%
if exist "%WindowsSdkDir%\Lib\%WindowsSDKVersion%\um\x64\kernel32.lib" echo KERNEL32_OK
