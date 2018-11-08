#!/bin/sh

#  Adobe Creative Cloud Desktop script  11082018 AVB
#  gov.gsa.adobe.creative.cloud.launcher.sh
#  govgsagit
#  Launches Adobe Creative Cloud Desktop App

open -a /Applications/Utilities/Adobe\ Creative\ Cloud/ACC/Creative\ Cloud.app


echo $(date) "Adobe Creative Cloud 2018 installed." >> /var/log/GSAlog

exit 0		## Success
exit 1		## Failure
