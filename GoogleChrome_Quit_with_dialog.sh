#!/bin/shs

#  Created by John Graphia on 7/12/18.
#  Modified by AVB on 08142018
#  
#################################################################
helper="/Library/Application Support/JAMF/bin/jamfHelper.app/Contents/MacOS/jamfHelper"
bddy=/usr/libexec/PlistBuddy
icon="/usr/local/GSAfiles/GSA-logo_blue.icns"
#################################################################

# Chrome Update Dialog
# Google Chrome Needs updates and will quit
heading="Updating Google Chrome"
description="Google Chrome needs to be updated to version 68.0.3440.106.  Chrome will quit before updates are installed.  Click OK to force quit Google Chrome and proceed with the update."
#
"$helper" -windowType hud -lockHUD -title "$heading" -alignHeading center -icon "$icon" -iconSize 96 -description "$description" -button1 "OK" -timeout 60 -countdown -alignCountdown center

osascript -e 'quit app "/Applications/Google Chrome.app"'
