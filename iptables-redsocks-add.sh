#!/bin/sh
iptables -t nat -N REDSOCKS
iptables -t nat -A REDSOCKS -p tcp -d 10.0.0.0/8 -j RETURN
iptables -t nat -A REDSOCKS -p tcp --dport 80 -j REDIRECT --to-ports 12345
iptables -t nat -A REDSOCKS -p tcp -j REDIRECT --to-ports 12346
iptables -t nat -A PREROUTING -p tcp -j REDSOCKS
