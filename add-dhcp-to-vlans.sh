#!/bin/bash
bash
configure
for i in {0..4}
do
	set interfaces ethernet eth$i
	set interfaces ethernet eth$i address dhcp
	set interfaces ethernet eth$i address dhcpv6

	set interfaces vlan eth$i.$(( $i + 1 ))
	set interfaces vlan eth$i.$(( $i + 1 )) address dhcp
	set interfaces vlan eth$i.$(( $i + 1 )) address dhcpv6
done
commit comment "Added dhcp to eth"
save
