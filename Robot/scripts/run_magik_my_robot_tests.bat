@echo OFF

rem ----------------------------------------------
rem Copyright 2014 Luiko Czub, Smallcases GmbH
rem Apache License 2.0
rem ----------------------------------------------

set PPR_THIS_DIR=%~dp0
call "%PPR_THIS_DIR%robot\setenv_robot_magik.bat"

set PPR_ROBOT_LOG_DIR=%PPR_THIS_DIR%\logs
set PPR_ROBOT_OUT_DIR=%PPR_ROBOT_LOG_DIR%\MyMagikTests
set PPR_MY_TESTS_DIR=%PPR_THIS_DIR%\MyMagikTests\cases

echo -----------------------------------------------------------------------
echo starts your own Robot Tests definied in MyMagikTests/cases
echo    ----
echo Precondition 
echo - Magik Image must be started with open remote_cli on port %PPR_CLI_PORT%
echo   start image and enter remote_cli.new(%PPR_CLI_PORT%)
echo   or adapt start_magik_image.bat
echo   see robot\robotframework-magik\doc\robot_magik_base.html
echo -----------------------------------------------------------------------
PAUSE

pybot --noncritical Negativ* --outputdir "%PPR_ROBOT_OUT_DIR%" --variable CLI_PORT:%PPR_CLI_PORT% --variable CLI_HOST:%PPR_CLI_HOST% --variable CLI_TIMEOUT:%PPR_CLI_TIMEOUT% "%PPR_MY_TESTS_DIR%"


PAUSE
