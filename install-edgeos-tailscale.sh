#!/bin/bash
sudo bash
mkdir -p /config/scripts/firstboot.d
curl -o /config/scripts/firstboot.d/tailscale.sh https://raw.githubusercontent.com/jamesog/tailscale-edgeos/main/firstboot.d/tailscale.sh
chmod 755 /config/scripts/firstboot.d/tailscale.sh
/config/scripts/firstboot.d/tailscale.sh
/config/scripts/post-config.d/tailscale.sh
