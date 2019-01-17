buildFrameworkLib:
	xcodebuild -quiet -project EmployeeGsonLib.xcodeproj \
	-configuration Release \
	-sdk iphoneos \
	-scheme EmployeeGsonLib \
	-derivedDataPath ./build
	rm -rf ../Dependencies/Frameworks/EmployeeGsonLib
	mkdir -p ../Dependencies/Frameworks/EmployeeGsonLib
	cp -r ./build/Build/Products/Release-iphoneos/EmployeeGsonLib.framework ../Dependencies/Frameworks/EmployeeGsonLib

buildFrameworkLibForSimulator:
	xcodebuild -quiet -project EmployeeGsonLib.xcodeproj \
	-configuration Release \
	-sdk iphonesimulator \
	-scheme EmployeeGsonLib \
	-derivedDataPath ./build
	rm -rf ../Dependencies/Frameworks/EmployeeGsonLib
	mkdir -p ../Dependencies/Frameworks/EmployeeGsonLib
	cp -r ./build/Build/Products/Release-iphonesimulator/EmployeeGsonLib.framework ../Dependencies/Frameworks/EmployeeGsonLib

obfuscateFrameworkLib:
	mkdir -p ./build/obfuscated
	java -cp /Users/ahmedmohammed/workspace/enquiry-engine/enquiry-engine-ios/Setup/lib/dexprotector-9.3.0.jar com.licel.dexprotector.ios.ConsoleTask \
	-configFile ./dex-config.xml \
	./build/Build/Products/Release-iphoneos/EmployeeGsonLib.framework ./build/obfuscated/EmployeeGsonLib.framework
	rm -rf ../Dependencies/Frameworks/EmployeeGsonLib
	mkdir -p ../Dependencies/Frameworks/EmployeeGsonLib
	cp -r ./build/obfuscated/EmployeeGsonLib.framework ../Dependencies/Frameworks/EmployeeGsonLib

cleanBuild:
	rm -rf build/*
