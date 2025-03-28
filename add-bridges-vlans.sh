#!/bin/bash
bash
configure
for i in {0..4}
do
        set interfaces bridge br$i
	set interfaces bridge br$i vif $(( $i + 1 ))
	set interfaces bridge br$i vif $(( $i + 1 )) address dhcp
	set interfaces bridge br$i vif $(( $i + 1 )) address dhcpv6
done
commit comment "Added bridges vlans"
save
exit
exit
