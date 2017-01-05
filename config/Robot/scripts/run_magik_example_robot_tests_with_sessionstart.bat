@echo OFF

rem ----------------------------------------------
rem Copyright 2017 Luiko Czub
rem Apache License 2.0
rem ----------------------------------------------

set PPR_THIS_DIR=%~dp0
call "%PPR_THIS_DIR%robot\setenv_robot_magik.bat"

set PPR_ROBOT_LOG_DIR=%PPR_THIS_DIR%\logs
set PPR_ROBOT_OUT_DIR=%PPR_ROBOT_LOG_DIR%\MagikExampleWithSessionStart

set PPR_VARIABLEFILE=%PPR_ROBOT_DIR%\variables_sw51_cbg.py
rem set PPR_VARIABLEFILE=%PPR_ROBOT_DIR%\variables_sw43_cbg.py

echo -----------------------------------------------------------------------
echo starts Example for Magik Robot Tests with Robot Framework Magik
echo - details see https://github.com/lczub/robotframework-magik/#readme
echo    ----
echo - Magik Image / Session will be started with settings, defined in 
echo   %PPR_VARIABLEFILE%
echo -----------------------------------------------------------------------
PAUSE

call pybot --exclude Keyword* --include Example* --critical DsView* --outputdir "%PPR_ROBOT_OUT_DIR%" --xunit robot_magik_tests.xml --NoStatusRC  --variablefile %PPR_VARIABLEFILE% "%PPR_ROBOT_MAGIK%\examples"


PAUSE
