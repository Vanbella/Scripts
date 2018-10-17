#!/bin/sh

#  gov.gsa.AcrobatReaderDC.extattrib.sh
#  govgsagit
#  Returns the version of Acrobat Reader DC installed
#  Created by AVB on 10/17/18.
#  
# Variables
##############################################
bddy=/usr/libexec/PlistBuddy
tgt=/Applications/Adobe\ Acrobat\ Reader\ DC.app/Contents/Info.plist
##############################################
if [[ -e $tgt ]]; then
instld=`$bddy -c "print CFBundleShortVersionString" "$tgt"`
echo "<result>$instld</result>"
else
echo "<result>Not Installed</result>"
fi
exit 0
