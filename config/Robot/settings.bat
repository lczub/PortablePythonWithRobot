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
set PY_VERSION=2711
set PP_VERSION=300.1.0
set PY_SHORT_VERSION=27
rem set TEMP=%~dp0..\build

:: Robot Editor RIDE does not work with wxPython 2.9.*, what is installed with PortablePython 2.7 
:: details see https://github.com/robotframework/RIDE/wiki/Installation-Instructions#id10
:: RIDE requires wxPython 2.8.*
set WXPYTHON_DOWNLOAD="http://sourceforge.net/projects/wxpython/files/wxPython/2.8.12.1/wxPython2.8-win32-unicode-2.8.12.1-py27.exe"
set WXPYTHON_FILE=wxPython2.8-win32-unicode-2.8.12.1-py27.exe
set WXPYTHON_MD5=895ba07ea6c05fcdbc273a921bad787b

:: RobotDemo-<date>.zip package 
set PPR_ROBOTDEMO_DOWNLOAD="https://bitbucket.org/robotframework/robotdemo/downloads/RobotDemo-20160129.zip"
set PPR_ROBOTDEMO_FILE=RobotDemo-20160129.zip
set PPR_ROBOTDEMO_MD5=c02dc8286de401bd55446b37b5e60fa2

:: WebDemo-<date>.zip package 
set PPR_WEBDEMO_DOWNLOAD="https://bitbucket.org/robotframework/webdemo/downloads/WebDemo-20150901.zip"
set PPR_WEBDEMO_FILE=WebDemo-20150901.zip
set PPR_WEBDEMO_MD5=7492c380e998b1ad4a34acd9a0a638c1

:: Robot Framework Magik (Smallworld GIS)
set PPR_ROBOTMAGIK_DOWNLOAD="https://github.com/lczub/robotframework-magik/releases/download/v0.4.4/robotframework-magik-0.4.4-92.zip"
set PPR_ROBOTMAGIK_FILE=robotframework-magik-0.4.4-92.zip
set PPR_ROBOTMAGIK_MD5=8be5ee7ee58cb4a4e218df2211c3db25

:: Robot Framework User Guide
set PPR_ROBOTUSERGUIDE_DOWNLOAD=http://robotframework.org/robotframework/robotframework-userguide-3.0.zip
set PPR_ROBOTUSERGUIDE_FILE=robotframework-userguide-3.0.zip
set PPR_ROBOTUSERGUIDE_MD5=50a1ec1f3703553fe122372b1345c882

:: Keyword Documentation Selenium 2 (WebDriver) library for Robot Framework
set PPR_ROBOTDOCSEL2LIB_DOWNLOAD=http://robotframework.org/Selenium2Library/Selenium2Library.html
set PPR_ROBOTDOCSEL2LIB_FILE=Selenium2Library.html
REM set PPR_ROBOTDOCSEL2LIB_MD5=

:: Robot Emacs Mode
set PPR_ROBOTEMACS_DOWNLOAD=https://github.com/sakari/robot-mode/archive/master.zip
set PPR_ROBOTEMACS_FILE=robot-mode-master.zip
set PPR_ROBOTEMACS_MD5=755535df8d2defa442af583215905a74