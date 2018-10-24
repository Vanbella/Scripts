#!/bin/sh

#  gov.gsa.adobe_reader.uninstall.sh
#  govgsagit
#
#  Created by AVB on 10/23/18.
##############################################
user=`who|grep console|sed -n 1p|awk '{print $1}'`
##############################################
#
if [ -d /Applications/Adobe\ Reader.app ]; then
#
killall AdobeReader &> /dev/null
rm -rf /Applications/Adobe\ Reader.app &> /dev/null
rm -rf /Library/Application\ Support/Adobe/Reader/11.0 &> /dev/null
rm -rf /Library/Application\ Support/Adobe/Reader/10.0 &> /dev/null
rm -rfd /Users/$user/Library/Application\ Support/Adobe/Acrobat/11.0/ &> /dev/null
rm -rfd /Users/$user/Library/Application\ Support/Adobe/Acrobat/10.0/ &> /dev/null
#
cho "Adobe Reader Uninstalled" >> /var/log/GSAlog
else
echo "Adobe Reader not installed" >> /var/log/GSAlog
fi
exit 0
