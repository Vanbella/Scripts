#!/bin/sh

#  gov.gsa.bigfix.install.sh
#  govgsagit
#
#  Created by John Graphia on 10/4/18.
#  Modified by AVB on 11/14/18
#
#check if we are connected to internal network
bftst=$(host bigfix.gsa.gov | sed -n 1p)
#
if  [[ "$bftst" =~ "has address" ]] ; then
#
echo $(date) "DNS found, on GSA lan" >> /var/log/GSAlog
rm /usr/local/GSAfiles/clientsettings.cfg
sleep 1
# Run the IBM BigFix installer
installer -pkg /usr/local/GSAfiles/BESAgent-9.5.10.79-BigFix_MacOSX10.7.pkg -target /
 sleep 2
# Clean up after yourself
rm -rf /usr/local/GSAfiles/BESAgent-9.5.10.79-BigFix_MacOSX10.7.pkg
rm -rf /usr/local/GSAfiles/actionsite.afxm
#
echo $(date) "IBM BigFix 9.5.10.79 installed on GSA lan." >> /var/log/GSAlog
else
echo $(date) "DNS not found, off GSA lan" >> /var/log/GSAlog
#
# Run the IBM BigFix installer
installer -pkg /usr/local/GSAfiles/BESAgent-9.5.9.62-BigFix_MacOSX10.7.pkg -target /
sleep 1
# Clean up after yourself
rm -rf /usr/local/GSAfiles/BESAgent-9.5.10.79-BigFix_MacOSX10.7.pkg
rm -rf /usr/local/GSAfiles/actionsite.afxm
rm /usr/local/GSAfiles/clientsettings.cfg &>/dev/null
echo $(date) "IBM BigFix 9.5.10.79 installed off GSA lan." >> /var/log/GSAlog
fi
exit 0
