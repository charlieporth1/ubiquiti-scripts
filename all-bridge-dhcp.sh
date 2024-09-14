for i in {0..4}; do set interfaces bridge br$i address dhcp; set interfaces bridget br$i address dhcpv6; done
commit
save
