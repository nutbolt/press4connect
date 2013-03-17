#!/bin/sh

cp wireless /etc/config/
cp network /etc/config/

/etc/init.d/network restart
/etc/init.d/dnsmasq restart

