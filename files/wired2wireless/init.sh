#!/bin/sh

cp wireless /etc/config/
cp network /etc/config/

logger "arguments for wireless2wired/init.sh are: $@"

uci set wireless.@wifi-iface[0].ssid="$ssid"
uci set wireless.@wifi-iface[0].encryption="$encryption"
uci set wireless.@wifi-iface[0].key="$key"
uci commit wireless


/etc/init.d/network restart
/etc/init.d/dnsmasq restart

