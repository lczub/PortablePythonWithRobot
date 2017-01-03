@echo off

rem ----------------------------------------------
rem Copyright 2015 Luiko Czub
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

set PPR_ROBOT_DIR=%~dp0

set PPR_PY_DIR=%PPR_ROBOT_DIR%..\App
set PPR_PY_SCRIPT_DIR=%PPR_PY_DIR%\Scripts
set PATH=%PATH%;%PPR_PY_DIR%;%PPR_PY_SCRIPT_DIR%
