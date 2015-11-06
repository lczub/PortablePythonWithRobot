@echo OFF

rem ----------------------------------------------
rem Copyright 2015 Luiko Czub
rem Apache License 2.0
rem ----------------------------------------------

set PPR_THIS_DIR=%~dp0
call "%PPR_THIS_DIR%robot\setenv_robot_general.bat"

set PPR_WEBDEMO_DIR=%PPR_ROBOT_DIR%\WebDemo
set PPR_ROBOT_LOG_DIR=%PPR_THIS_DIR%logs
set PPR_ROBOT_OUT_DIR=%PPR_ROBOT_LOG_DIR%\WebDemo

echo -----------------------------------------------------------------------
echo starts Demo for Web Robot Tests with Selenium2Library
echo - details see https://bitbucket.org/robotframework/webdemo/wiki/Home
echo    ----
echo Precondition 
echo - WebDemo Application on port 7272 must be started
echo   - see start_webdemo_app.bat
echo - firefox must be in PATH
echo   - use an up-to-date version like FF 26
echo   - old versions like FF 3.6 creates WebDriverException: 
echo     ... (NS_ERROR_INVALID_POINTER) [nsINativeKeyboard.sendKeys]
echo     see https://groups.google.com/forum/#!topic/webdriver/iX1IAonj2Ro
echo -----------------------------------------------------------------------
PAUSE

rem call pybot --help > "%PPR_ROBOT_LOG_DIR%\pybot_help.txt"

call pybot --variable BROWSER:firefox --outputdir "%PPR_ROBOT_OUT_DIR%" "%PPR_WEBDEMO_DIR%\login_tests"

PAUSE