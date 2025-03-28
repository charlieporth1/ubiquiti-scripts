#!/bin/bash
bash
configure
for i in {0..4}
do
        set interfaces ethernet eth$i
	set interfaces ethernet eth$i vif $(( $i + 1 ))
	set interfaces ethernet eth$i vif $(( $i + 1 )) address dhcp
	set interfaces ethernet eth$i vif $(( $i + 1 )) address dhcpv6
done
commit comment "Added bridges vlans"
save
