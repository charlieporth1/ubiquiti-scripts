#!/bin/bash
configure
for i in {0..4}; do set interfaces ethernet eth$i address dhcp; set interfaces ethernet eth$i address dhcpv6; done
commit comment "Set all ethernets to DHCP & DHCPv6"
save
exit
