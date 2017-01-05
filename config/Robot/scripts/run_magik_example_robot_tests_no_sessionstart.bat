@echo OFF

rem ----------------------------------------------
rem Copyright 2015-2017 Luiko Czub
rem Apache License 2.0
rem ----------------------------------------------

set PPR_THIS_DIR=%~dp0
call "%PPR_THIS_DIR%robot\setenv_robot_magik.bat"

set PPR_ROBOT_LOG_DIR=%PPR_THIS_DIR%\logs
set PPR_ROBOT_OUT_DIR=%PPR_ROBOT_LOG_DIR%\MagikExampleNoSessionStart

echo -----------------------------------------------------------------------
echo starts Example for Magik Robot Tests with Robot Framework Magik
echo - details see https://github.com/lczub/robotframework-magik/#readme
echo    ----
echo Precondition 
echo - Magik Image must be started with open remote_cli on port %PPR_CLI_PORT%
echo   start image and enter remote_cli.new(%PPR_CLI_PORT%)
echo   or adapt start_magik_image.bat
echo   see robot\robotframework-magik\doc\robot_magik_base.html
echo -----------------------------------------------------------------------
PAUSE

call pybot --exclude Keyword* --include Example* --critical DsView* --outputdir "%PPR_ROBOT_OUT_DIR%" --xunit robot_magik_tests.xml --NoStatusRC --variable CLI_PORT:%PPR_CLI_PORT% --variable CLI_HOST:%PPR_CLI_HOST% --variable CLI_TIMEOUT:%PPR_CLI_TIMEOUT% --variable CLI_DSVIEW_NAME:gis "%PPR_ROBOT_MAGIK%\examples\c*"


PAUSE
