@ECHO OFF

rem ----------------------------------------------
rem Copyright 2015-2017 Luiko Czub
rem Apache License 2.0
rem ----------------------------------------------

set PPR_THIS_DIR=%~dp0
call robot\setenv_robot_general.bat

echo -----------------------------------------------------------------------
echo starts Demo Web Application required for Demo Web Robot Tests
echo - details see https://github.com/lczub/robotframework-magik/#readme
echo - end with CTRL+C or close windows
echo -----------------------------------------------------------------------

set PPR_WEBDEMO_DIR=%PPR_ROBOT_DIR%\WebDemo

call python "%PPR_WEBDEMO_DIR%\demoapp\server.py"
