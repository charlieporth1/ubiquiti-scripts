#!/bin/bash
bash
configure
for i in {0..4}
do
	delete interfaces bridge br$i
	delete interfaces ethernet eth$i bridge-group bridge br$i
done
commit comment "Added bridges"
save
exit
exit
