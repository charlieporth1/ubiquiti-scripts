#!/bin/bash
configure
for i in {0..4}; do set interfaces bridge br$i; done
commit comment "Added bridges"
save
