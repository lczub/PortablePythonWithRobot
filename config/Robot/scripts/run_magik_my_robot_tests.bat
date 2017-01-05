@echo OFF

rem ----------------------------------------------
rem Copyright 2015-2017 Luiko Czub
rem Apache License 2.0
rem ----------------------------------------------

set PPR_THIS_DIR=%~dp0
call "%PPR_THIS_DIR%robot\setenv_robot_magik.bat"

set PPR_ROBOT_LOG_DIR=%PPR_THIS_DIR%\logs
set PPR_ROBOT_OUT_DIR=%PPR_ROBOT_LOG_DIR%\MyMagikTests
set PPR_MY_TESTS_DIR=%PPR_THIS_DIR%\MyMagikTests\cases

rem set PPR_VARIABLEFILE=%PPR_ROBOT_DIR%\variables_sw51_cbg.py
set PPR_VARIABLEFILE=%PPR_ROBOT_DIR%\variables_sw43_cbg.py

echo -----------------------------------------------------------------------
echo starts your own Robot Tests definied in MyMagikTests/cases
echo    ----
echo - Magik Image / Session will be started with settings, defined in 
echo   %PPR_VARIABLEFILE%
echo -----------------------------------------------------------------------
PAUSE

call pybot --noncritical Negativ* --outputdir "%PPR_ROBOT_OUT_DIR%" --variablefile %PPR_VARIABLEFILE% "%PPR_MY_TESTS_DIR%"


PAUSE
