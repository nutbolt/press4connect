#!/bin/sh

uci delete dhcp.@dnsmasq[0].address
uci commit dhcp

mv /www/index.html.default /www/index.html
rm /www/p4c
rm /www/cgi-bin/p4c.lua

