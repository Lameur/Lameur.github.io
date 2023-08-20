:: Need to run with administrator permission
echo off

:: ==========================================================================================
::  Check for admin rights
:: ==========================================================================================

net session 1>nul 2>&1 && goto :adminMode

@:: -----------------------------------------------------------------------------------------
echo Re-launch with administrator privileges.
goto eof

@:: -----------------------------------------------------------------------------------------
:adminMode

net session 1>nul 2>&1
if %ErrorLevel% neq 0 (
    echo ERROR: Failed to run 'net session'. It seems that this script failed.
    goto :eof
)

echo Verified running with administrator privileges.
echo Arguments: %*

@:: -----------------------------------------------------------------------------------------
@echo off

:: Title
title Python http server

:: script

echo. && cls
cd %OneDrive%\GitHub-Projects\Lameur.github.io
echo %CD%
python -m http.server -b localhost 80 -p HTTP/2.0 --cgi

:error
:eof
pause > nul
exit