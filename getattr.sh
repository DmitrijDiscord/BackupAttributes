#!/bin/sh

find / -print0 | xargs -0 stat -c 'chmod %a %n' > /home/administrator/Documents/$(uname -n)_SysAttr_$(date +"%d-%m-%Y").sh