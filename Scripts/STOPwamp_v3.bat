@echo off
if not "%1"=="am_admin" (powershell start -verb runas '%0' am_admin & exit /b)
echo off

:config
title WAMPLite v1
set script-title=WAMPLite v1

@echo off
@echo,
NET STOP wampapache64
NET STOP wampmariadb64
NET STOP wampmysqld64
@echo,
@echo ##################################################################
@echo,
@echo   ..... WAMP STOPPED
@echo,
@echo ##################################################################
@echo,
@echo ...Closing in 1 seconds.
@echo,

timeout /t 1
exit
