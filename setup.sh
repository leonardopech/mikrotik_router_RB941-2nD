================================

/system reset-configuration no-defaults=yes skip-backup=no

================================

/system identity
set name=router-name-here

================================

/user
add name=your-user-here group=full password=your-pwd-here

================================

/interface bridge
add name=INTERNET

/interface bridge port
add bridge=INTERNET interface=ether1

/ip dhcp-client
add interface=INTERNET

/ip dns
set servers=1.1.1.1,8.8.8.8

/ip firewall nat
add chain=srcnat action=masquerade out-interface=INTERNET

/ping google.com count=4

================================

/interface bridge
add name=HOTSPOT

/interface bridge port
add bridge=HOTSPOT interface=ether2

================================

/interface bridge
add name=CLIENTES_FIJOS

/interface bridge port
add bridge=CLIENTES_FIJOS interface=ether3

================================

/interface bridge
add name=MGMT

/interface bridge port
add bridge=MGMT interface=ether4

================================
