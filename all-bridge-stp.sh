#!/bin/bash
configure
for i in {0..4}; do set interfaces bridge br$i stp true; done
commit comment "Set all bridges to stp enable"
save
exit
