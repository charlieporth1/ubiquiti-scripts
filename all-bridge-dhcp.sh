configure
for i in {0..4}; do set interfaces bridge br$i address dhcp; set interfaces bridget br$i address dhcpv6; done
commit comment "Set all ethernets to DHCP & DHCPv6"
save
exit
