## Fork of Portable Python development pages
It is not maintained anymore, cause it is nowadays much easier to install a collection of robot modules using a virtualenv and pip or pipenv.

Target was to build a [Robot Framework](http://robotframework.org/) environment , runnable directly from any USB storage device, local or network location (on MS Window systems). Details see [Robot - README.rst](config/Robot/scripts/README.rst)

Build command is `build Robot`

## Portable Python development pages
==============

#### What is Portable Python?
Portable Python is a [Python® programming language](http://Python.org/ "Python® programming language") pre-configured to run directly from any USB storage device, local or network location enabling you to have, at any time, a portable programming environment. 

#### Licensing
Portable Python build scripts are licensed under MIT license, other third party tools and packages are licensed by their respecitive projects/owners.

#### Usage
Portable Python build scripts can be invoked from any MS Windows command prompt by using `build` command and specifying version to be created, e.g.:

`build 2.7` 

will download all components needed for building Portable Python based on the Python 2.7, unpack all packages to current user temp folder and create final installer.

Configuration settings are specified per version, in this case `settings.bat` will be used in 2.7 folder.

Other version specific files:
 * `descriptions.nsh` - language strings per package needed for installer creation
 * `modules.bat` - list of modules to be included and their specific rules for unpackaging/configuration
 * `modules.nsh` - NSIS installer configuration
 * `settings.bat` - list of modules to be included and their download locations



