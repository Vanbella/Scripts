#!/bin/sh

# IBM Bigfix Installer script  08132018 AVB

# Run the IBM BigFix installer

installer -allowUntrusted -pkg /usr/local/GSAfiles/BESAgent-9.5.9.62-BigFix_MacOSX10.7.pkg -target /

sleep 30

# Clean up after yourself

rm -rf /usr/local/GSAfiles/BESAgent-9.5.9.62-BigFix_MacOSX10.7.pkg
rm -rf /usr/local/GSAfiles/actionsite.afxm
rm -rf /usr/local/GSAfiles/clientsettings.cfg

echo $(date) "IBM BigFix 9.5.9.62 installed." >> /var/log/GSAlog

exit 0		## Success
exit 1		## Failure

