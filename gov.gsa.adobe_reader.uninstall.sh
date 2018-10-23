#!/bin/sh

#  gov.gsa.adobe_reader.uninstall.sh
#  govgsagit
#
#  Created by AVB on 10/23/18.
#
if [ -d /Applications/Adobe\ Reader.app ]; then
#
killall adobereader &> /dev/null
rm -rf /Applications/Adobe\ Reader.app &> /dev/null
#
else
echo "Adobe Reader not installed" >> /var/log/GSAlog
fi
exit 0
