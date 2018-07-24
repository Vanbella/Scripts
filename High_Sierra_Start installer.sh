#!/bin/bash
#postflight script to start the Sierra Installer from Applications     20180326  AVB
#postflight script to start the High Sierra Installer from Applications     07232018  AVB

/Applications/Install\ macOS\ High\ Sierra.app/Contents/Resources/startosinstall --applicationpath /Applications/Install\ macOS\ High\ Sierra.app --agreetolicense --converttoapfs YES --nointeraction --rebootdelay 300

killall "Self Service"

