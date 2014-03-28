:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:: The MIT License (MIT)
:: Copyright (c) 2014 Luiko Czub
 
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

:: http://PortablePython.com
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

:: general PP 2.7 settings
set PP_BASE=%~dp0..\2.7
call %PP_BASE%\settings.bat

:: robot spezific settings
set PY_VERSION=275
set PP_VERSION=2.0.1
set PY_SHORT_VERSION=27
rem set TEMP=%~dp0..\build

:: Robot Editor RIDE does not work with wxPython 2.9.*, what is installed with PortablePython 2.7 
:: details see https://github.com/robotframework/RIDE/wiki/Installation-Instructions#id10
:: RIDE requires wxPython 2.8.*

set WXPYTHON_DOWNLOAD="http://sourceforge.net/projects/wxpython/files/wxPython/2.8.12.1/wxPython2.8-win32-unicode-2.8.12.1-py27.exe"
set WXPYTHON_FILE=wxPython2.8-win32-unicode-2.8.12.1-py27.exe
set WXPYTHON_MD5=895ba07ea6c05fcdbc273a921bad787b


