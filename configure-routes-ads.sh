#!/bin/bash

configure

set service nat rule 5012 description Tailscale
set service nat rule 5012 outbound-interface tailscale0
set service nat rule 5012 protocol all
set service nat rule 5012 type masquerade

commit comment "Added Tailscale NAT rules"
save
exit
