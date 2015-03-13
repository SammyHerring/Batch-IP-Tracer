@ECHO OFF
color 0a
title ip Proxy Overide System
:Start
echo Welcome to the ip Overide System
echo Enter the requested website you wish to access
set /p url="Enter the URL: "
if "%url%" == "" goto Start
goto iptrace
:iptrace
cls
echo Your chosen URL is: %url%
echo At this point type in the ip which is stated in brackets next to the URL.
tracert %url%
set /p ipchosen="Enter the ip: "
start /wait iexplore %ipchosen%
cls
set /p another=Would you like to access another website?
if "%another%" == "YES" goto Start
if "%another%" == "yes" goto Start
if "%another%" == "Yes" goto Start
if "%another%" == "Y" goto Start
if "%another%" == "y" goto Start
if "%another%" == "NO" goto end
if "%another%" == "no" goto end
if "%another%" == "No" goto end
if "%another%" == "N" goto end
if "%another%" == "n" goto end
:end
exit