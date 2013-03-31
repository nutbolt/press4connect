#!/bin/sh

cp wireless /etc/config/
cp network /etc/config/

uci add_list dhcp.@dnsmasq[0].address='/#/1.0.0.1'
uci commit dhcp

cp /www/index.html /www/index.html.default
cp index.html /www/
ln -sf $(pwd)/www /www/p4c 
ln -sf $(pwd)/cgi-p4c.lua /www/cgi-bin/p4c.lua

/etc/init.d/network restart
/etc/init.d/dnsmasq restart
/etc/init.d/uhttpd start

