#!/bin/bash
for i in {0..4}; do set interfaces ethernet eth$i address dhcp; set interfaces ethernet eth$i address dhcpv6; done
commit
save
