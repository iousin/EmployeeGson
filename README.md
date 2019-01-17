# EmployeeGson
Sample project that transpiles gson 2.7 using j2objc

This project demonstrates memory leak when Gson is transpiled using j2objc. 

It has gson 2.7 source code and also the j2objc transpiled code into a Framework. 

It also has a project that uses this framework. 

Versions used:

Gson 2.7

J2objc: 2.2

# Running project

Project is based on Xcode 10.1

Goto employee-gson-ios -> EmployeeGsonLib and open the xcode project. 

Set "User defined settings" J2OBJC_HOME to the j2objc 2.2 home folder. 

All other settings are in place and should work out of the box. 

# To profile

While EmployeeGson app target is selected press Command + I and select "Leaks" on instruments. 

Click on record button and then on simulator click on "Generate Gson". After this instruments will report a leak with "ComGoogleGsonInternalLinkedTreeMap_Node"

Click on the "Generate Gson" button couple of time and note that the memory usage if these classes keeps increasing. 

There's another button "Generate Gson Autorelease" that wraps the gson generation inside a autoreleasepool block, still doesn't help.

# Regenerate j2objc transpiled code.

Close xcode project. 

Go to employee-gson folder and run ./generateJ2objc.sh this should delete any existing .h and .m files generate new from the java sources. 

# Makefile to build for phone and simulator

employee-gson-ios -> EmployeeGsonLib

From the above folder one can run various make targets to build for phone and simulator and also to obfuscate it. 
