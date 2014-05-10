@ECHO OFF

rem ----------------------------------------------
rem Copyright 2014 Luiko Czub, Smallcases GmbH
rem Apache License 2.0
rem ----------------------------------------------

set PPR_THIS_DIR=%~dp0
call robot\setenv_robot_magik.bat

echo -----------------------------------------------------------------------
echo starts RIDE Editor with Magik Example Tests for Smallworld Images
echo -----------------------------------------------------------------------

call python "%PPR_PY_SCRIPT_DIR%\ride.py" "%PPR_ROBOT_MAGIK%\examples"
