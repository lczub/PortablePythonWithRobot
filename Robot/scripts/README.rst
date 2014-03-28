====================================
Portable Python with Robot Framework
====================================

Intention
=========

This collection of open source software is a portable (standalone) installation of the test 
automation framework `Robot Framework`_ with `standard test libraries`_, the `Selenium2Library`_ for web testing and the 
`Robot Framework Magik`_ extension for testing Smallworld Magik images.

Hope this helps you in your daily work in testing the interacting of Smallworld GIS with 
web applications or other systems.

Have fun with tests, 22. Jan. 2014
`Luiko Czub`_, `Smallcases GmbH`_ 

Directory Layout
================

App/
    `Portable Python`_ installation with `Robot Framework`_ and `Selenium2Library`_
	
robot/
    resources like `Robot Framework Magik`_, RobotDemo_, WebDemo_, `Robot Emacs Mode`_
	
MyMagikTests/
    place for your own tests and keyword definitions	
	
run_*_robot_tests.bat
    examples, how to start robot tests

start|stop_*.bat
    helper scripts, needed by the examples	
	
Documentations
==============

- Robot Framework User Guide `<robot/docs/robotframework-userguide-2.8.3/RobotFrameworkUserGuide.html>`_
- keywords standard test libraries `<robot/docs/robotframework-userguide-2.8.3/libraries>`_
- keywords Selenium2Library `<robot/docs/Selenium2Library.html>`_
- keywords Robot Framework Magik Base `<robot/docs/robot_magik_base.html>`_
- keywords Robot Framework Magik DsView `<robot/docs/robot_magik_dsview.html>`_
    	
	
Package Details
===============

============= ======================== ========================
Package Name  `Portable Python`_       Python_
Version       2.7.5.1                  2.7.5.1
License       `MIT License`_           `Python License 2.0`_
============= ======================== ========================

============= ======================== ========================
Package Name  `Robot Framework`_       `Selenium2Library`_
Version       2.8.3                    1.5.0
License       `Apache License 2.0`_    `Apache License 2.0`_
============= ======================== ========================

============= ======================== ========================
Package Name  `Robot Framework Magik`_ `Robot Emacs Mode`_
Version       0.3.1                     ---
License       `Apache License 2.0`_    `GPL 3.0`_
============= ======================== ========================

============= ======================== ========================
Package Name  `RobotDemo`_             `WebDemo`_
Version       20130319                 20130308
License        ---                     ---
============= ======================== ========================

This site is written in reStructuredText_ and converted into HTML with 
`reStructuredText online renderer`_.


.. _Luiko Czub: mailto://luiko.czub@smallcases.de
.. _Smallcases GmbH: http://www.smallcases.de
.. _Robot Framework: http://robotframework.org/
.. _standard test libraries: http://robotframework.org/#test-libraries
.. _Selenium2Library: https://github.com/rtomac/robotframework-selenium2library/#readme
.. _Robot Framework Magik: https://github.com/lczub/robotframework-magik/#readme
.. _Portable Python: http://portablepython.com/
.. _RobotDemo: https://bitbucket.org/robotframework/robotdemo/wiki/Home
.. _WebDemo: https://bitbucket.org/robotframework/webdemo/wiki/Home
.. _Robot Emacs Mode: https://github.com/sakari/robot-mode/#readme
.. _Python: http://python.org/
.. _MIT License: http://opensource.org/licenses/MIT
.. _Python License 2.0: http://opensource.org/licenses/Python-2.0
.. _Apache License 2.0: http://www.apache.org/licenses/LICENSE-2.0
.. _GPL 3.0: http://www.gnu.org/licenses/gpl-3.0
.. _reStructuredText: http://docutils.sourceforge.net/docs/user/rst/quickref.html
.. _reStructuredText online renderer: http://www.hosting4u.cz/jbar/rest/rest.html