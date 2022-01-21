#!/bin/sh

echo 1 > /proc/sys/net/ipv4/ip_forward
#iptables -A FORWARD -i tun4 -o wlan0 -j ACCEPT
#iptables -A FORWARD -i wlan0 -o tun4 -m state --state ESTABLISHED,RELATED
iptables -t nat -A POSTROUTING -o wlan0 -j MASQUERADE
