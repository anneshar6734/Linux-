#!/bin/bash

ping -c 2 8.8.8.8 

cat << EOF

what happens in a ping:

LAYER 3: the ping creates an ICMP echo request that is encapsulated in IPv4. IP header contains source and destination ip addresses of yours and servers 

LAYER 2: next the computer need to know the MAC addr of the device that will sent the packet to the servere in this case router thus broadcasting 'who has 192.167.1.1 default gateway tell 192.167.23.66' 
Reciving the ip of default gateway along with mac 

LAYER 1: having 2 of them now the ip is encapsulated in the ethernet frame and converted to optical signal and transimminted  via wires or wifi 

On Return: 
the server recives the echo ICMP it replys back with the same packet saying 'hi there!'

we are pinging google with 56(84 including header)bytes of made up data. 
 	
EOF

