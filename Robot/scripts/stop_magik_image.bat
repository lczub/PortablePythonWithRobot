@echo off

rem ----------------------------------------------
rem Copyright 2014 Luiko Czub, Smallcases GmbH
rem Apache License 2.0
rem ----------------------------------------------

set PPR_THIS_DIR=%~dp0
call "%PPR_THIS_DIR%robot\setenv_robot_magik.bat"

set PPR_ROBOT_LOG_DIR=%PPR_THIS_DIR%logs
set PPR_GIS_LOG_DIR=%PPR_ROBOT_LOG_DIR%\gis_logs
set PPR_PID_LOG_DIR=%PPR_ROBOT_LOG_DIR%\pids

echo -----------------------------------------------------------------------
echo stops image via remot_cli port %PPR_CLI_PORT%
echo -----------------------------------------------------------------------
PAUSE

python "%PPR_ROBOT_MAGIK%\scripts\robot_stop_magik_image.py" --piddir "%PPR_PID_LOG_DIR%" --cli_port %PPR_CLI_PORT%

IF ERRORLEVEL 1 ECHO error level is 1 or more
PAUSE
