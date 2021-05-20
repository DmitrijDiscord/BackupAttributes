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
elif [[ $loc = DNT ]]; then
    netw=103
else
    echo "Wrong location! Exiting!"
    exit 1
fi

for ((i=1; i < 2; i++))
do 
    for ((j=1; j <= 255; j++))
    do
	expect getattr_on_remote_PC.exp $netw $i $j
	expect backup_from_pc.exp $netw $i $j
    done
done
