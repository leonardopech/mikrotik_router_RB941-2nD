
/system reset-configuration no-defaults=yes skip-backup=no

================================

/interface bridge
add name=WAN
add name=LAN_CLIENTES

/interface bridge port
add bridge=WAN interface=ether1

================================

/interface bridge port
add bridge=LAN_CLIENTES interface=ether2
add bridge=LAN_CLIENTES interface=ether3
add bridge=LAN_CLIENTES interface=ether4

/ip address
add address=192.168.39.254/24 interface=WAN
add address=192.168.50.1/24 interface=LAN_CLIENTES

/ip route
add gateway=192.168.39.1

/ip dns
set servers=1.1.1.1,8.8.8.8

/ip firewall nat
add chain=srcnat action=masquerade out-interface=WAN

/
ping google.com count=4

