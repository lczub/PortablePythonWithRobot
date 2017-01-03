@ECHO OFF

rem ----------------------------------------------
rem Copyright 2015 Luiko Czub
rem Apache License 2.0
rem ----------------------------------------------

set PPR_THIS_DIR=%~dp0
call robot\setenv_robot_general.bat

echo -----------------------------------------------------------------------
echo starts RIDE Editor with standard Demo Robot Tests
echo -----------------------------------------------------------------------

set PPR_ROBOTDEMO_DIR=%PPR_ROBOT_DIR%\RobotDemo

call python "%PPR_PY_SCRIPT_DIR%\ride.py" "%PPR_ROBOTDEMO_DIR%"
