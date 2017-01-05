@echo OFF

rem ----------------------------------------------
rem Copyright 2015-2017 Luiko Czub
rem Apache License 2.0
rem ----------------------------------------------

set PPR_THIS_DIR=%~dp0
call "%PPR_THIS_DIR%robot\setenv_robot_general.bat"

set PPR_WEBDEMO_DIR=%PPR_ROBOT_DIR%\WebDemo
set PPR_ROBOT_LOG_DIR=%PPR_THIS_DIR%logs
set PPR_ROBOT_OUT_DIR=%PPR_ROBOT_LOG_DIR%\WebDemo

rem set PATH=%PATH%;C:\Program Files\Mozilla Firefox
set PATH=%PATH%;C:\Program Files (x86)\Mozilla Firefox

echo -----------------------------------------------------------------------
echo starts Demo for Web Robot Tests with Selenium2Library
echo - details see https://bitbucket.org/robotframework/webdemo/wiki/Home
echo    ----
echo Precondition 
echo - WebDemo Application on port 7272 must be started
echo   - see start_webdemo_app.bat
echo - browser (firefox  / chrom) must be in PATH
echo - webdriver (geckodriver / chromdriver) must be in PATH
echo   - see robot/setenv_robot_general.bat and robot/WebDriver
echo -----------------------------------------------------------------------
PAUSE

rem call pybot --help > "%PPR_ROBOT_LOG_DIR%\pybot_help.txt"

call pybot --variable BROWSER:firefox --outputdir "%PPR_ROBOT_OUT_DIR%" "%PPR_WEBDEMO_DIR%\login_tests"

PAUSE