@echo OFF

rem ----------------------------------------------
rem Copyright 2014 Luiko Czub, Smallcases GmbH
rem Apache License 2.0
rem ----------------------------------------------

set PPR_THIS_DIR=%~dp0
call "%PPR_THIS_DIR%robot\setenv_robot_general.bat"

set PPR_ROBOTDEMO_DIR=%PPR_ROBOT_DIR%\RobotDemo
set PPR_ROBOT_LOG_DIR=%PPR_THIS_DIR%logs
set PPR_ROBOT_OUT_DIR=%PPR_ROBOT_LOG_DIR%\RobotDemo

echo -----------------------------------------------------------------------
echo starts Demo for standard Robot Tests
echo - details see https://bitbucket.org/robotframework/robotdemo/wiki/Home
echo -----------------------------------------------------------------------
PAUSE

call pybot --outputdir "%PPR_ROBOT_OUT_DIR%" --pythonpath "%PPR_ROBOTDEMO_DIR%" "%PPR_ROBOTDEMO_DIR%\*.robot"

PAUSE