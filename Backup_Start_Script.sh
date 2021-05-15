#!/bin/bash

#for ((i=0; i < 2; i++))
#do 
#    for ((j=1; j <= 255; j++))
#    do
	expect getattr_on_remote_PC.exp $1 $2
	expect backup_from_pc.exp $1 $2
#    done
#done
