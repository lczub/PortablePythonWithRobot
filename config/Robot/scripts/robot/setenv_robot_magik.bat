@echo off

rem ----------------------------------------------
rem Copyright 2015-2017 Luiko Czub
rem Apache License 2.0
rem ----------------------------------------------

call "%~dp0setenv_robot_general.bat"

rem echo ----------------------------------------------
rem echo setting environment for robot tests - Magik
rem echo ----------------------------------------------

set PPR_CLI_HOST=localhost
set PPR_CLI_PORT=14001
set PPR_CLI_TIMEOUT=10.0
set PPR_ROBOT_MAGIK=%PPR_ROBOT_DIR%\robotframework-magik

