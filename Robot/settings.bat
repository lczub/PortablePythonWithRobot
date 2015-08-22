:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:: The MIT License (MIT)
:: Copyright (c) 2007 Perica Zivkovic, 2014 Luiko Czub
 
:: Permission is hereby granted, free of charge, to any person obtaining a 
:: copy of this software and associated documentation files (the "Software"), 
:: to deal in the Software without restriction, including without limitation 
:: the rights to use, copy, modify, merge, publish, distribute, sublicense, 
:: and/or sell copies of the Software, and to permit persons to whom the 
:: Software is furnished to do so, subject to the following conditions:
 
:: The above copyright notice and this permission notice shall be included 
:: in all copies or substantial portions of the Software.
 
:: THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS 
:: OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, 
:: FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE 
:: AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, 
:: WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN 
:: CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

:: http://PortablePython.com, https://github.com/lczub/PortablePythonWithRobot
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

:: general PP 2.7 settings
set PP_ROBOT=%~dp0
set PP_BASE=%PP_ROBOT%..\2.7
call %PP_BASE%\settings.bat

:: robot spezific settings
set PY_VERSION=2710
set PP_VERSION=2.284.2
set PY_SHORT_VERSION=27
rem set TEMP=%~dp0..\build

:: Robot Editor RIDE does not work with wxPython 2.9.*, what is installed with PortablePython 2.7 
:: details see https://github.com/robotframework/RIDE/wiki/Installation-Instructions#id10
:: RIDE requires wxPython 2.8.*
set WXPYTHON_DOWNLOAD="http://sourceforge.net/projects/wxpython/files/wxPython/2.8.12.1/wxPython2.8-win32-unicode-2.8.12.1-py27.exe"
set WXPYTHON_FILE=wxPython2.8-win32-unicode-2.8.12.1-py27.exe
set WXPYTHON_MD5=895ba07ea6c05fcdbc273a921bad787b

:: RobotDemo-<date>.zip package 
set PPR_ROBOTDEMO_DOWNLOAD="https://bitbucket.org/robotframework/robotdemo/downloads/RobotDemo-20130319.zip"
set PPR_ROBOTDEMO_FILE=RobotDemo-20130319.zip
set PPR_ROBOTDEMO_MD5=02db401d01129f6d6e461f9709f40b52

:: WebDemo-<date>.zip package 
set PPR_WEBDEMO_DOWNLOAD="https://bitbucket.org/robotframework/webdemo/downloads/WebDemo-20130308.zip"
set PPR_WEBDEMO_FILE=WebDemo-20130308.zip
set PPR_WEBDEMO_MD5=894cbd787c0849d1836ed736f4b1913a

:: Robot Framework Magik (Smallworld GIS)
set PPR_ROBOTMAGIK_DOWNLOAD="https://github.com/lczub/robotframework-magik/releases/download/v0.3.1/robotframework-magik-0.3.1-31.zip"
set PPR_ROBOTMAGIK_FILE=robotframework-magik-0.3.1-31.zip
set PPR_ROBOTMAGIK_MD5=7a7d99a5365792f9becb06ee087ef0d4

:: Robot Framework User Guide
set PPR_ROBOTUSERGUIDE_DOWNLOAD=https://dl.dropboxusercontent.com/s/hoq4nk2xw53lwvu/robotframework-userguide-2.8.4.zip
set PPR_ROBOTUSERGUIDE_FILE=robotframework-userguide-2.8.4.zip
set PPR_ROBOTUSERGUIDE_MD5=b0ea118091156512f8e826a51fbca086

:: Keyword Documentation Selenium 2 (WebDriver) library for Robot Framework
set PPR_ROBOTDOCSEL2LIB_DOWNLOAD=http://rtomac.github.com/robotframework-selenium2library/doc/Selenium2Library.html
set PPR_ROBOTDOCSEL2LIB_FILE=Selenium2Library.html
REM set PPR_ROBOTDOCSEL2LIB_MD5=

:: Robot Emacs Mode
set PPR_ROBOTEMACS_DOWNLOAD=https://github.com/sakari/robot-mode/archive/master.zip
set PPR_ROBOTEMACS_FILE=robot-mode-master.zip
set PPR_ROBOTEMACS_MD5=f958a56674e99a64ac0b102c120f5204