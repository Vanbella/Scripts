#!/bin/sh

#  gov.gsa.horizon_USB_configuration.sh
#
#  Created by AVB on 10/03/18.
#
/Applications/VMware\ Horizon\ Client.app/Contents/Library/InitUsbServices.tool &>/dev/null
#
echo "VMWare Horizon USB Services Configured" >> /var/log/GSAlog
exit 0
