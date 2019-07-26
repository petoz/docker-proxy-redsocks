#!/bin/sh

echo "Setting iptables"
/root/iptables-redsocks-add.sh
echo "When stopped run..."
cat /root/iptables-redsocks-rm.sh
exec /usr/sbin/redsocks -c /root/redsocks.conf
