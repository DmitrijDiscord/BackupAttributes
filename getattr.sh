#!/bin/sh

find / | xargs stat -c 'chmod %a %n' > /home/administrator/Documents/$(uname -n)_SysAttr_$(date +"%d-%m-%Y").sh