sudo iptables -t nat -A POSTROUTING -o eth1 -j MASQUERADE

sudo iptables -A FORWARD -i eth1 -o eth0 -m state --state NEW,RELATED,ESTABLISHED -j ACCEPT

sudo iptables -A FORWARD -i eth0 -o eth1 -m state --state ESTABLISHED,RELATED -j ACCEPT

sudo sh -c echo 1 /proc/sys/net/ipv4/ip forward’’


