@echo off 
if not "%1"=="am_admin" (powershell start -verb runas '%0' am_admin & exit /b)
echo off

:config
title WAMPLite V3
set script-title=WAMPLite V3

@echo off
@echo,
NET STOP wampapache64
NET STOP wampmariadb64
NET STOP wampmysqld64
NET START wampapache64
NET START wampmariadb64
NET START wampmysqld64
@echo,
@echo ##################################################################
@echo,
@echo   ..... WAMP Started
@echo,
@echo ##################################################################
@echo,
@echo ...Closing in 2 seconds.
@echo,

timeout /t 2
exit