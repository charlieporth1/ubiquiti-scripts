#!/bin/bash
configure
for i in {0..4}; do set interfaces bridge br$i address dhcp; set interfaces bridge br$i address dhcpv6; done
commit comment "Set all bridges to DHCP & DHCPv6"
save
exit
