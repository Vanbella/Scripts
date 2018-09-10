#!/bin/bash

# VMWare Horizon Configuration

# AVB 09102018

LOGPATH='/private/var/log'
LOGFILE=$LOGPATH/GSAlog$(date +%m.%d.%Y.%H:%M).log
#
user=`who|grep console|sed -n 1p|awk '{print $1}'`
#
sudo -u $user /Applications/VMware\ Horizon\ Client.app/Contents/Library/InitUsbServices.tool &>/dev/null
#
sudo -u $user defaults write /Users/$user/Library/Preferences/com.vmware.horizon "https://horizon.gsa.gov:443/broker/xmldomain" -string "ENT"
#
sudo -u $user defaults write /Users/$user/Library/Preferences/com.vmware.horizon broker-history -array -string https://horizon.gsa.gov:443/broker/xml
#
sudo -u $user defaults write /Users/$user/Library/Preferences/com.vmware.horizon trustedServers -array -string https://horizon.gsa.gov:443/broker/xml
#
echo $(date) "VMWare Horizon configuration has completed." >> $LOGFILE
exit 0
