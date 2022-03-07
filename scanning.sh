##!/bin/bash

##Powered by Networksec 

## SCANNING 

whatweb -d $1  > $1-whatweb.txt
nmap -Pn -sV -sC $1 -oN $1-nmap.txt
wfuzz -t 100 -Z -c -z file,/usr/share/wordlists/wfuzz/general/common.txt -hc 404 $1/FUZZ