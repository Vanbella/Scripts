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
rm -rf /Applications/Citrix\ Receiver.app &>/dev/null
rm -rf /Library/Application\ Support/Citrix &>/dev/null
rm -rf /Library/Application\ Support/Citrix\ Receiver &>/dev/null
rm -rf /Library/Internet\ Plug-Ins/CitrixICAClientPlugIn.plugin &>/dev/null
rm -rf /Library/LaunchAgents/com.citrix.AuthManager_Mac.plist &>/dev/null
rm -rf /Library/LaunchAgents/com.citrix.ReceiverHelper.plist &>/dev/null
rm -rf /Library/LaunchAgents/com.citrix.ServiceRecords.plist &>/dev/null
rm -rf /Library/LaunchDaemons/com.citrix.ctxusbd.plist &>/dev/null
rm -rf /usr/local/libexec/AuthManager_Mac.app &>/dev/null
rm -rf /usr/local/libexec/ReceiverHelper &>/dev/null
rm -rf /usr/local/libexec/ServiceRecords &>/dev/null
rm -rf /Users/Shared/Citrix\ Receiver &>/dev/null
rm -rf /Users/$user/Library/Application\ Support/Citrix\ Receiver &>/dev/null
rm -rf /Users/$user/Library/Application\ Support/Citrix &>/dev/null
rm -rf /Users/$user/Library/Preferences/com.citrix.AuthManager.plist &>/dev/null
rm -rf /Users/$user/Library/Preferences/com.citrix.AuthManagerMac.plist &>/dev/null
rm -rf /Users/$user/Library/Preferences/com.citrix.receiver.nomas.plist &>/dev/null
rm -rf /Users/$user/Library/Preferences/com.citrix.ReceiverFTU.AccountRecords.plist &>/dev/null
rm -rf /Users/$user/Library/Preferences/com.citrix.ReceiverHelper.plist &>/dev/null
#
echo "Citrix Receiver uninstalled" >> /var/log/GSAlog
exit 0
