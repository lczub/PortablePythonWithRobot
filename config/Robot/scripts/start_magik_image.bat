@echo off

rem ----------------------------------------------
rem Copyright 2015-2017 Luiko Czub
rem Apache License 2.0
rem ----------------------------------------------

set PPR_THIS_DIR=%~dp0
call "%PPR_THIS_DIR%robot\setenv_robot_magik.bat"

rem set PPR_SMALLWORLD_GIS=C:\Smallworld\NRM51-B9-i82\core
set PPR_SMALLWORLD_GIS=C:\Smallworld\430\CST430\product
set PPR_ALIAS_FILE=%PPR_SMALLWORLD_GIS%\..\cambridge_db\config\gis_aliases
set PPR_ALIAS=cambridge_db_open
set PPR_LOGIN="root/ "
REM starting SW5 sessions and SW4 closed images need the msf_startup option
REM starting SW4 startup images does not need this option
REM set PPR_MSF_STARTUP="--msf_startup" 
set PPR_ROBOT_LOG_DIR=%PPR_THIS_DIR%logs
set PPR_GIS_LOG_DIR=%PPR_ROBOT_LOG_DIR%\gis_logs
set PPR_PID_LOG_DIR=%PPR_ROBOT_LOG_DIR%\pids

echo -----------------------------------------------------------------------
echo starts %PPR_ALIAS% image for Magik Robot Tests with Robot Framework Magik
echo - details see https://github.com/lczub/robotframework-magik/#readme
echo    ----
echo stop image with stop_magik_image.bat
echo -----------------------------------------------------------------------
PAUSE

SET ROBOT_MAGIK_DIR=%PPR_ROBOT_MAGIK%
REM call %PPR_LOCALISED_ENVIRONMENT%

REM start /wait python %PPR_ROBOT_MAGIK%\resources\scripts\robot_start_magik_image.py %PPR_MSF_STARTUP% --aliasfile %PPR_ALIAS_FILE% --login %PPR_LOGIN% --logdir gis_logs --cli_port %PPR_CLI_PORT% --wait 20 %PPR_SMALLWORLD_GIS% %PPR_ALIAS%
python "%PPR_ROBOT_MAGIK%\resources\scripts\robot_start_magik_image.py" %PPR_MSF_STARTUP% --aliasfile %PPR_ALIAS_FILE% --login %PPR_LOGIN% --logdir "%PPR_GIS_LOG_DIR%" --piddir "%PPR_PID_LOG_DIR%" --cli_port %PPR_CLI_PORT% --wait 20 %PPR_SMALLWORLD_GIS% %PPR_ALIAS%

IF ERRORLEVEL 1 ECHO error level is 1 or more
PAUSE
