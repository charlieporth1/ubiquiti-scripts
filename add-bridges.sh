#!/bin/bash
configure
bash
for i in {0..4}
do
        set interfaces bridge br$i
        set interfaces ethernet eth$i bridge-group bridge br$i
done
commit comment "Added bridges & eth to brige"
save
exit
exit
