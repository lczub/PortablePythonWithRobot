Changes in PortablePythonWithRobot Build environment
====================================================

PortablePythonWithRobot v2710.287.1 (Nov. 2015)
-----------------------------------------------------------

support of Ride 1.4.1 with Robotframework 2.8.7 (Ride 1.4.1 does not support RF 2.9)

change base to Python 2.7.10 - integrate Portable Python 2.7.10.1 changes

includes new offline installer packages 
- PyScripter 2.6.0

update offline installer packages
- Python 2.7.10
- Robot Framework Magik 0.3.2
- RobotDemo-20150901
- WebDemo-20150901

update online installer (PyPI) for 

- Robot Framework = 2.8.7
- Selenium2Library >= 1.7.4
- Ride = 1.4.1

PortablePythonWithRobot v276.2.284.1 (May. 2014)
-----------------------------------------------------------

bug fix release

MyMagikTest does not find the robot magik resources #3
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

- resource *MyMagikTests\\resources\\my_table_keywords.txt* references wrong environment variables
- new script *ride_magik_example_robot_test.bat* shows, how Magik tests could be edit and execute
  with RIDE editor
  
starting Magik images aborts, when PPR install path name includes spaces #2 
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Reason is, that the used Smallworld image launcher *gis.exe* has problems, when his command line argument *-run_script* is used with a path, which includes spaces. Using quote sign ("E:\T T\t.script") does not help. 

As WorkAround, the used PPR default installation name is changed from *Portable Python Robot VERSION* to *Portable-Python-Robot-VERSION*. Also a hint *Known Problem* is added inside the README, that PPR should be installed in a path without spaces.

start_magik_image.bat aborts, when PPR_ROBOT_LOG_DIR not exists #1 
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

As WorkAround, the installer creates now an empty default log directory

PortablePythonWithRobot v276.2.284.0 (May. 2014)
-----------------------------------------------------------

change base to Python 2.7.6 - integrate Portable Python 2.7.6.1 changes

PortablePythonWithRobot v275.2.284.0 (Apr. 2014)
-----------------------------------------------------------

initial version PortablePythonWithRobot (for Magik testing) - based on Portable Python 2.7.5.1 

includes offline installer packages 

- Python 2.7.5
- wxPython 2.8.12.1
- Robot Emacs Mode
- Robot Framework Magik 0.3.1
- RobotDemo 20130319
- WebDemo 20130308

includes online installer (PyPI) for 

- Robot Framework >= 2.8.4
- Selenium2Library >= 1.5.0
- Ride >= 1.3

