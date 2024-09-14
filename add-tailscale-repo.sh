#!/bin/bash
sudo -i

curl https://pkgs.tailscale.com/stable/debian/stretch.noarmor.gpg | tee /usr/share/keyrings/tailscale-stretch-stable.gpg

configure

set system package repository tailscale url '[signed-by=/usr/share/keyrings/tailscale-stretch-stable.gpg] https://pkgs.tailscale.com/stable/debian'
set system package repository tailscale distribution stretch
set system package repository tailscale components main

commit comment "Add Tailscale repository"
save
exit
