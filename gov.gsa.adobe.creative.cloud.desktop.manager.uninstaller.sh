#!/bin/sh
#  gov.gsa.adobe.creative.cloud.desktop.manager.uninstaller.sh
#  govgsagit
#  Created by AVB on 11/09/2018.
#  Uninstalls Creative Cloud Desktop Manager and Adobe Acrobat Pro DC
#  Client needs reboot after script completes

logfile="/var/log/GSAlog"
user=`ls -l /dev/console | awk '/ / { print $3 }'`

# Stop the Adobe Processes

Pkill Adobe*
Pkill Acrobat*
Pkill Creative Cloud*
Pkill Core Sync*
Pkill CCLibrary
Pkill CCXProcess

# Delete the Adobe CC Desktop Manger:

rm -Rf /Applications/Adobe\ Creative\ Cloud
rm -Rf /Applications/Utilities/Adobe\ Application\ Manager
rm -Rf /Applications/Utilities/Adobe\ Creative\ Cloud
rm -Rf /Applications/Utilities/Adobe\ Creative\ Cloud\ Experience
rm -Rf /Applications/Utilities/Adobe\ Installers
rm -Rf /Applications/Utilities/Adobe\ Sync

# Remove Adobe CC LaunchAgents

launchctl remove /Library/LaunchAgents/com.adobe.AAM.Updater-1.0.plist
launchctl remove /Library/LaunchAgents/com.adobe.AdobeCreativeCloud.plist
launchctl remove /Library/LaunchAgents/com.adobe.ARMDCHelper*
launchctl remove /Library/LaunchAgents/com.adobe.GC.AGM.plist
launchctl remove /Library/LaunchAgents/com.adobe.GC.Invoker-1.0.plist

# Delete Adobe CC plists

rm -Rf /Library/LaunchAgents/com.adobe.AAM.Updater-1.0.plist
rm -Rf /Library/LaunchAgents/com.adobe.ARMDCHelper*
rm -Rf /Library/LaunchAgents/com.adobe.AdobeCreativeCloud.plist
rm -Rf /Library/LaunchAgents/com.adobe.GC.AGM.plist
rm -Rf /Library/LaunchAgents/com.adobe.GC.Invoker-1.0.plist

# Remove Adobe CC LaunchDaemons

launchctl remove /Library/LaunchDaemons/com.adobe.acc.installer.plist
launchctl remove /Library/LaunchDaemons/com.adobe.acc.installer.v2.plist
launchctl remove /Library/LaunchDaemons/com.adobe.agsservice.plist
launchctl remove /Library/LaunchDaemons/com.adobe.ARMDC.Communicator.plist
launchctl remove /Library/LaunchDaemons/com.adobe.ARMDC.SMJobBlessHelper.plist
launchctl remove /Library/LaunchDaemons/com.adobe.fpsaud.plist

# Delete Adobe CC LaunchDaemons 

rm -Rf /Library/LaunchDaemons/com.adobe.acc.installer.plist
rm -Rf /Library/LaunchDaemons/com.adobe.acc.installer.v2.plist
rm -Rf /Library/LaunchDaemons/com.adobe.agsservice.plist
rm -Rf /Library/LaunchDaemons/com.adobe.ARMDC.Communicator.plist
rm -Rf /Library/LaunchDaemons/com.adobe.ARMDC.SMJobBlessHelper.plist
rm -Rf /Library/LaunchDaemons/com.adobe.fpsaud.plist

# Delete Library Items

rm -Rf /Library/Application\ Support/Adobe
rm -Rf /Library/Application\ Support/regid.1986-12.com.adobe
rm -Rf /Library/Internet\ Plug-Ins/AdobeAAMDetect.plugin
rm -Rf /Library/Logs/CreativeCloud*
rm -Rf /Library/Preferences/com.adobe.headlights.apipcc.plist
rm -Rf /Library/Preferences/com.adobe.acc.AdobeDesktopService.plist
rm -Rf /Library/Preferences/com.adobe.headlights.apip.plist
rm -Rf /Library/PriviledgedHelperTools/com.adobe.acc.installer.v2

# Delete private/var/root Items

rm -Rf /private/var/root/Library/Application\ Support/Adobe*
rm -Rf /private/var/root/Library/Logs/Adobe*

# Delete RUM

rm -Rf /usr/local/bin/RemoteUpdateManager

# Delete Adobe CC Items from Users folder

rm -Rf /Users/$user/Library/Application\ Support/Adobe
rm -Rf /Users/$user/Library/Logs/CreativeCloud
rm -Rf /Users/$user/Library/Logs/PDApp.log
rm -Rf /Users/$user/Library/Preferences/com.adobe.acc.AdobeDesktopService.plist
rm -Rf /Users/$user/Library/Preferences/com.adobe.acc.HEXHelper.plist
rm -Rf /Users/$user/Library/Preferences/com.adobe.accmac.plist
rm -Rf /Users/$user/Creative\ Cloud\ Files
rm -Rf /Users/$user/Creative\ Cloud\ Files*

#Delete Adobe CC Items from Users folder

rm -Rf /Users/Shared/Adobe*

echo $(date) "Uninstalled Adobe Creative Cloud Desktop Manager" >> $logfile

# Delete Adobe Bridge CC 2019

rm -rf /Applications/Adobe\ Bridge\ CC\ 2019 &>/dev/null

# Uninstall Adobe Acrobat Pro DC

#  if [ -f "/Applications/Adobe Acrobat DC" ] ; then 
rm -Rf /Library/Application\ Support/Adobe/AdobeApplicationManager/AAMRefs/com.adobe.Acrobat_DC.aamref
rm -Rf /Library/Automator/Save\ as\ Adobe\ PDF.action
rm -Rf /Library/PDF\ Services/Save\ as\ Adobe PDF.app
rm -Rf /var/root/Library/Preferences/com.adobe.Acrobat.Uninstaller.plist
rm -Rf /Library/Application\ Support/Mozilla*
rm -Rf /Library/Preferences/com.adobe.acrobat.DC.WebResource.plist
rm -Rf /Applications/Adobe\ Acrobat\ DC
#  else
echo $(date) "Uninstalled Adobe Acrobat Pro DC" >> $logfile
#  fi

exit 0
