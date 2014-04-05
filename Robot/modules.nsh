; =================================================================
; The MIT License (MIT)
; Copyright (c) 2007 Perica Zivkovic, 2014 Luiko Czub
 
; Permission is hereby granted, free of charge, to any person obtaining a copy 
; of this software and associated documentation files (the "Software"), to deal 
; in the Software without restriction, including without limitation the rights 
; to use, copy, modify, merge, publish, distribute, sublicense, and/or sell 
; copies of the Software, and to permit persons to whom the Software is furnished 
; to do so, subject to the following conditions:
 
; The above copyright notice and this permission notice shall be included in all 
; copies or substantial portions of the Software.
 
; THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, 
; EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF 
; MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. 
; IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, 
; DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, 
; ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR 
; OTHER DEALINGS IN THE SOFTWARE.

; http://PortablePython.com, https://github.com/lczub/PortablePythonWithRobot
; =================================================================

InstType "Full"
InstType "Minimal"
InstType "Ride"

Section "!Python 2.7.5 core" PYTHON_CORE
	AddSize 16400
	SectionIn 1 2 3 RO
	SetOutPath "$INSTDIR"
	File /r "${SOURCESFOLDER}\python-core\*.*"
	File "${SOURCESFOLDER}\Python-Portable.exe"
	File "${SOURCESFOLDER}\PythonW-Portable.exe"
	File "${SOURCESFOLDER}\IDLE-Portable.exe"
	
	; pip installation is an extract from 
	; https://github.com/wheeler-microfluidics/microdrop_portable_python_base/blob/microdrop/2.7/modules.nsh
	; many thanks to Christian Frobel 
	Var /GLOBAL EasyInstall
	Var /GLOBAL Pip
	StrCpy $EasyInstall '$INSTDIR\App\Scripts\easy_install.exe'
	StrCpy $Pip '$INSTDIR\App\Scripts\pip.exe'
	nsExec::ExecToLog '$EasyInstall pip'
SectionEnd

SectionGroup "Python Modules"
/* 
	Section "NumPy 1.7.1" MODULE_NUMPY
		SectionIn 1
		SetOutPath "$INSTDIR\App\Lib\site-packages\"
		File /r "${SOURCESFOLDER}\numpy\PLATLIB\*.*"
	SectionEnd
	Section "SciPy 0.12.0" MODULE_SCIPY
		SectionIn 1
		SetOutPath "$INSTDIR\App\Lib\site-packages\"
		File /r "${SOURCESFOLDER}\scipy\PLATLIB\*.*"
	SectionEnd
	Section "PyWin32 218" MODULE_PYWIN32
		SectionIn 1
		SetOutPath "$INSTDIR\App\"
		File /r "${SOURCESFOLDER}\pywin32\*.*"
	SectionEnd
	Section "NetworkX 1.7" MODULE_NETWORKX
		SectionIn 1
		SetOutPath "$INSTDIR\App\Lib\site-packages\networkx\"
		File /r "${SOURCESFOLDER}\networkx\networkx\*.*"
	SectionEnd
	Section "Django 1.5.1" MODULE_DJANGO
		SectionIn 1
		SetOutPath "$INSTDIR\App\Lib\site-packages\django\"
		File /r "${SOURCESFOLDER}\django\Django-1.5.1\django\*.*"
		SetOutPath "$INSTDIR\App\Scripts"
		File "${SOURCESFOLDER}\django\Django-1.5.1\django\bin\django-admin.py"
	SectionEnd
	Section "PIL 1.1.7" MODULE_PIL
		SectionIn 1
		SetOutPath "$INSTDIR\App\Lib\site-packages\"
		File /r "${SOURCESFOLDER}\pil\PLATLIB\*.*"
	SectionEnd
	Section "Py2Exe 0.6.9" MODULE_PY2EXE
		SectionIn 1
		SetOutPath "$INSTDIR\App\Lib\site-packages\"
		File /r "${SOURCESFOLDER}\py2exe\PLATLIB\*.*"
	SectionEnd
*/
	Section "wxPython 2.8.12.1 UniCode" MODULE_WXPYTHON
		AddSize 2200
		SectionIn 1 3
		SetOutPath "$INSTDIR\App\"
		File /r "${SOURCESFOLDER}\wxpython\package\*.*"
	SectionEnd
/* 
	Section "matplotlib 1.2.1" MODULE_MATPLOTLIB
		SectionIn 1
		SetOutPath "$INSTDIR\App\Lib\site-packages\"
		File /r "${SOURCESFOLDER}\matplotlib\PLATLIB\*.*"
	SectionEnd
	Section "lxml 2.3" MODULE_LXML
		SectionIn 1
		SetOutPath "$INSTDIR\App\Lib\site-packages\"
		File /r "${SOURCESFOLDER}\lxml\PLATLIB\*.*"
	SectionEnd
	Section "PySerial 2.5" MODULE_PY_SERIAL
		SectionIn 1
		SetOutPath "$INSTDIR\App\Lib\site-packages\"
		File /r "${SOURCESFOLDER}\pyserial\PURELIB\*.*"
	SectionEnd
	Section "PyODBC 3.0.6" MODULE_PYODBC
		SectionIn 1
		SetOutPath "$INSTDIR\App\Lib\site-packages\"
		File /r "${SOURCESFOLDER}\pyodbc\PLATLIB\*.*"
	SectionEnd
	Section "PyGame 1.9.1" MODULE_PYGAME
		SectionIn 1
		SetOutPath "$INSTDIR\App\"
		File /r "${SOURCESFOLDER}\pygame\*.*"
	SectionEnd
	Section "PyGTK 2.24.2" MODULE_PYGTK
		SectionIn 1
		SetOutPath "$INSTDIR\App\"
		File /r "${SOURCESFOLDER}\pygtk\*.*"
		SetOutPath "$INSTDIR"
		File "${SOURCESFOLDER}\Glade3-Portable.exe"
	SectionEnd
	Section "PyQT 4.10.1" MODULE_PYQT
		SectionIn 1
		SetOutPath "$INSTDIR\App\Lib\"
		File /r "${SOURCESFOLDER}\pyqt\Lib\*.*"
		SetOutPath "$INSTDIR\App\Lib\site-packages\PyQT4\"
		File /r "${SOURCESFOLDER}\pyqt\$[31]\*.*"
		SetOutPath "$INSTDIR\App\"
		File "${SOURCESFOLDER}\qt.conf"
		SetOutPath "$INSTDIR"
		File "${SOURCESFOLDER}\QtDesigner-Portable.exe"
	SectionEnd
	Section "IPython 0.13.1" MODULE_IPYTHON
		SectionIn 1
		SetOutPath "$INSTDIR\App\Lib\site-packages\IPython"
		File /r "${SOURCESFOLDER}\ipython\IPython\*.*"
		SetOutPath "$INSTDIR\App\Lib\site-packages\"
		File /r "${SOURCESFOLDER}\pyreadline\pyreadline-1.7.1\*.*"
		SetOutPath "$INSTDIR"
		File "${SOURCESFOLDER}\IPython-Portable.exe"
	SectionEnd
	Section "Pandas 0.11.0" MODULE_PANDAS
		SectionIn 1
		SetOutPath "$INSTDIR\App\Lib\site-packages\"
		File /r "${SOURCESFOLDER}\pandas\PLATLIB\*.*"
	SectionEnd 
*/
SectionGroupEnd

SectionGroup "Robot `pip` packages"
	
    Section "robotframework"  PIP_MODULE_ROBOT
		AddSize 3900
        SectionIn 1 2 3 RO
        ; nsExec::ExecToLog '$Pip install robotframework'
        nsExec::ExecToLog '$Pip install robotframework'
		
		SetOutPath "$INSTDIR\"
		File "${SOURCESFOLDER}\robot_scripts\README.*"
		SetOutPath "$INSTDIR\robot"
		File "${SOURCESFOLDER}\robot_scripts\robot\setenv_robot_general.bat"

    SectionEnd

    Section "robotframework-selenium2library"  PIP_MODULE_ROBOT_SELENIUM2LIB
		AddSize 7900
        SectionIn 1
        nsExec::ExecToLog '$Pip install robotframework-selenium2library'
    SectionEnd
	
SectionGroupEnd

SectionGroup "Code editors"
	; Section "PyScripter 2.5.3" IDE_PYSCRIPTER
		; SectionIn 1
		; SetOutPath "$INSTDIR"
		; File /r "${SOURCESFOLDER}\PyScripter\*.*"
		; File "${SOURCESFOLDER}\PyScripter-Portable.exe"
	; SectionEnd
	
    Section "robotframework-ride (via pip)"  PIP_MODULE_ROBOT_RIDE
		AddSize 11000
        SectionIn 1 3
        nsExec::ExecToLog '$Pip install robotframework-ride'
    SectionEnd
	Section "Robot Emacs Mode"
		SectionIn 1
		SetOutPath "$INSTDIR\robot"
		File /r "${SOURCESFOLDER}\robot_scripts\robot\robot-mode-master"
	SectionEnd
	
	
SectionGroupEnd

SectionGroup "Test Libraries (non pip)"

    Section "robotframework-magik"  LIBRARY_ROBOT_MAGIK
		AddSize 300
        SectionIn 1
		SetOutPath "$INSTDIR\robot"
		File /r "${SOURCESFOLDER}\robot_scripts\robot\robotframework-magik"
   SectionEnd
	
SectionGroupEnd

SectionGroup "Examples"
	
    Section "Robot Framework Demo"
		AddSize 32
        SectionIn 1 2 3
		SetOutPath "$INSTDIR"
		File "${SOURCESFOLDER}\robot_scripts\*robotdemo*.bat"
		SetOutPath "$INSTDIR\robot"
		File /r "${SOURCESFOLDER}\robot_scripts\robot\RobotDemo"

    SectionEnd

    Section "Robot Web Demo"
		AddSize 40
        SectionIn 1
		SetOutPath "$INSTDIR"
		File "${SOURCESFOLDER}\robot_scripts\*webdemo*.bat"
		SetOutPath "$INSTDIR\robot"
		File /r "${SOURCESFOLDER}\robot_scripts\robot\WebDemo"
    SectionEnd

    Section "Robot Smallworld Magik Demo"
		AddSize 8
        SectionIn 1
		SetOutPath "$INSTDIR"
		File "${SOURCESFOLDER}\robot_scripts\*magik*.bat"
		File /r "${SOURCESFOLDER}\robot_scripts\MyMagikTests"
		SetOutPath "$INSTDIR\robot"
		File "${SOURCESFOLDER}\robot_scripts\robot\setenv_robot_magik.bat"
    SectionEnd
	
SectionGroupEnd

SectionGroup "Documentations"
	
    Section "UserGuide Robot Framework"
		AddSize 4000
        SectionIn 1 2 3
		SetOutPath "$INSTDIR\robot\docs\"
		File /r "${SOURCESFOLDER}\robot_scripts\robot\docs\robotframework-userguide*"
    SectionEnd

	Section "Keywords selenium2library"
		AddSize 200
        SectionIn 1
		SetOutPath "$INSTDIR\robot\docs\"
		File "${SOURCESFOLDER}\robot_scripts\robot\docs\Selenium2Library*"
    SectionEnd
	
	Section "Keywords robotframework-magik"
		AddSize 200
        SectionIn 1
		CopyFiles "$INSTDIR\robot\robotframework-magik\doc\*.html" "$INSTDIR\robot\docs\"
    SectionEnd

SectionGroupEnd