#!/bin/sh

#  gov.gsa.citrixreceiver.extattrib.sh
#  govgsagit
#
#  Created by AVB on 9/13/18.
#  
# Variables
##############################################
bddy=/usr/libexec/PlistBuddy
tgt=/Applications/Citrix\ Receiver.app/Contents/Info.plist
##############################################
if [[ -e $tgt ]]; then
instld=`$bddy -c "print CFBundleShortVersionString" "$tgt"`
echo "<result>$instld</result>"
else
echo "<result>Not Installed</result>"
fi
exit 0
