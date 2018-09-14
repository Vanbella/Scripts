#!/bin/sh

#  gov.gsa.citrix_receiver.uninstall.sh
#  govgsagit
#
#  Created by AVB on 9/13/18.
#  
##############################################
user=`who|grep console|sed -n 1p|awk '{print $1}'`
##############################################
#
sudo -u $user launchctl unload /Library/LaunchAgents/com.citrix.ctxusbd.plist &>/dev/null
#
pkill Citrix &>/dev/null
#
Sleep 5
#
rm -rf /Applications/Citrix\ Receiver.app
rm -rf /Library/Application\ Support/Citrix
rm -rf /Library/Application\ Support/Citrix\ Receiver
rm -rf /Library/Internet\ Plug-Ins/CitrixICAClientPlugIn.plugin
rm -rf /Library/LaunchAgents/com.citrix.AuthManager_Mac.plist
rm -rf /Library/LaunchAgents/com.citrix.ReceiverHelper.plist
rm -rf /Library/LaunchAgents/com.citrix.ServiceRecords.plist
rm -rf /Library/LaunchDaemons/com.citrix.ctxusbd.plist
rm -rf /usr/local/libexec/AuthManager_Mac.app
rm -rf /usr/local/libexec/ReceiverHelper
rm -rf /usr/local/libexec/ServiceRecords
rm -rf /Users/Shared/Citrix\ Receiver
rm -rf /Users/$user/Library/Application\ Support/Citrix\ Receiver
rm -rf /Users/$user/Library/Application\ Support/Citrix
rm -rf /Users/$user/Library/Preferences/com.citrix.AuthManager.plist
rm -rf /Users/$user/Library/Preferences/com.citrix.AuthManagerMac.plist
rm -rf /Users/$user/Library/Preferences/com.citrix.receiver.nomas.plist
rm -rf /Users/$user/Library/Preferences/com.citrix.ReceiverFTU.AccountRecords.plist
rm -rf /Users/$user/Library/Preferences/com.citrix.ReceiverHelper.plist
#
echo "Citrix Receiver uninstalled" >> /var/log/GSAlog
exit 0
