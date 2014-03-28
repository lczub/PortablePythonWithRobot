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

:: Include common functions - not necessary, cause %PP_BASE%\modules.bat call it
REM set COMMON=.\..\common.bat

:: download and build required PP 2.7 packages
call %PP_BASE%\modules.bat Python WxPython

REM call :UnpackRobot
REM call :UnpackRide
call :UnpackRobotScripts
call :UnpackRobotDemo
call :UnpackWebDemo
call :UnpackRobotMagik

goto:EOF

:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:DownloadFileAndRename fileURL fileNAME
::
:: By:   Luiko Czub
:: Func: Downloads specified file with WGET and rename it
::       required for github release downloads
:: Args: fileURL fileName
::
:: difference to common :COMMON :DownloadFile 
::       uses wget option '-O output file' instead '-P output dir'
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
setlocal ENABLEEXTENSIONS
call :ExtractFileName "%~2"

tools\wget\wget.exe --no-check-certificate -nv -q -N -O "%BIN_FOLDER%\%~2" "%~1" 2>NUL
endlocal&goto :EOF
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::


:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:UnpackRobotScripts
::
:: By:   Luiko Czub
:: Func: Copies directory Robot/scripts witch examples and batch scripts
:: Args: none
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
setlocal ENABLEEXTENSIONS

call COMMON :LogMessage "Copy robot script dir"
mkdir "%UNPACK_FOLDER%\robot_scripts"
xcopy /EY %PP_ROBOT%scripts "%UNPACK_FOLDER%\robot_scripts" >NUL

endlocal&goto :EOF
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:UnpackRobotDemo
::
:: By:   Luiko Czub
:: Func: Download and extract RobotDemo-<date>.zip package
::       from https://bitbucket.org/robotframework/robotdemo/wiki/Home
:: Args: none
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
setlocal ENABLEEXTENSIONS

:: Download RobotDemo-<date>.zip
call COMMON :DownloadFile %PPR_ROBOTDEMO_DOWNLOAD%

:: Verify 
call COMMON :VerifyFile %PPR_ROBOTDEMO_FILE% MD5 %PPR_ROBOTDEMO_MD5%

:: Unpack files
call COMMON :LogMessage "Extracting RobotDemo files"
tools\uniextract16\UniExtract.exe "%BIN_FOLDER%\%PPR_ROBOTDEMO_FILE%" %UNPACK_FOLDER%\robot_scripts\robot >NUL

endlocal&goto :EOF
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:UnpackWebDemo
::
:: By:   Luiko Czub
:: Func: Download and extract WebDemo-<date>.zip package
::       from https://bitbucket.org/robotframework/robotdemo/wiki/Home
:: Args: none
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
setlocal ENABLEEXTENSIONS

:: Download WebDemo-<date>.zip
call COMMON :DownloadFile %PPR_WEBDEMO_DOWNLOAD%

:: Verify 
call COMMON :VerifyFile %PPR_WEBDEMO_FILE% MD5 %PPR_WEBDEMO_MD5%

:: Unpack files
call COMMON :LogMessage "Extracting WebDemo files"
tools\uniextract16\UniExtract.exe "%BIN_FOLDER%\%PPR_WEBDEMO_FILE%" %UNPACK_FOLDER%\robot_scripts\robot >NUL

endlocal&goto :EOF
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:UnpackRobotMagik
::
:: By:   Luiko Czub
:: Func: Download and extract Robot Framework Magik 
::       high level keywords for automated testing Smallworld Magik images 
::       from https://github.com/lczub/robotframework-magik
:: Args: none
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
setlocal ENABLEEXTENSIONS

:: Download robotframework-magik-<version>.zip
call :DownloadFileAndRename %PPR_ROBOTMAGIK_DOWNLOAD% %PPR_ROBOTMAGIK_FILE%

:: Verify 
call COMMON :VerifyFile %PPR_ROBOTMAGIK_FILE% MD5 %PPR_ROBOTMAGIK_MD5%

:: Unpack files
call COMMON :LogMessage "Extracting Robot Framework Magik files"
tools\uniextract16\UniExtract.exe "%BIN_FOLDER%\%PPR_ROBOTMAGIK_FILE%" %UNPACK_FOLDER%\robot_scripts\robot\robotframework-magik >NUL

endlocal&goto :EOF
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
