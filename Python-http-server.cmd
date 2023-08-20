@echo off

:: Title
title Python http server

:: script

echo. && cls

python -m http.server -b localhost 9000 -p HTTP/2.0 --cgi
exit