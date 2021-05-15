#!/bin/bash

ssh administrator@172.16.$1.$2 'bash -s' < getattr.sh