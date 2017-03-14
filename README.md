# Increment Xcode Build Number
A Swift script that will increase the build number of all your Xcode projects. This only works for standalone Xcode projects, if your project is inside a workspace, this script will not do anything.
The script is written in Swift 3.0.2


### Instructions
1. Put the script where you want it on your Mac. I put mine in my ~/Developer folder.
2. Compile the script in the terminal using swiftc like this: ```swiftc increment_build_number.swift```
3. Add the binary to the Xcode Build Succeded Behavior in the Xcode Preferences (see screenshot below)

![Screenshot](http://www.imgur.com/tQwR21n.png)
