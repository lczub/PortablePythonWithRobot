@ECHO OFF

rem ----------------------------------------------
rem Copyright 2015-2017 Luiko Czub
rem Apache License 2.0
rem ----------------------------------------------

set PPR_THIS_DIR=%~dp0
call robot\setenv_robot_general.bat

echo -----------------------------------------------------------------------
echo starts RIDE Editor with Web Robot Tests using Selenium2Library
echo -----------------------------------------------------------------------

set PPR_WEBDEMO_DIR=%PPR_ROBOT_DIR%\WebDemo

call python "%PPR_PY_SCRIPT_DIR%\ride.py" "%PPR_WEBDEMO_DIR%\login_tests"
