#!/bin/bash

echo "Please enter Office Location"
echo "Mostovaya"
echo "Bogutskogo"
echo "DNT"
read loc

if [[ $loc = Mostovaya ]]; then
    netw=104
elif [[ $loc = Bogutskogo ]]; then
    netw=101
else
    netw=103
fi

for ((i=0; i < 2; i++))
do 
    for ((j=30; j <= 38; j++))
    do
	expect getattr_on_remote_PC.exp $netw $i $j
	expect backup_from_pc.exp $netw $i $j
    done
done
