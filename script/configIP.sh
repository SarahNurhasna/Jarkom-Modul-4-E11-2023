# AURA
# iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE -s 10.42.0.0/16
# echo nameserver 192.168.122.1 > /etc/resolv.conf
auto lo
iface lo inet loopback

auto eth0
iface eth0 inet dhcp

#A8 --> 10.42.7.128 - 10.42.7.131
auto eth1
iface eth1 inet static
address 10.42.7.129
netmask 255.255.255.252

#A9 --> 10.42.7.124 - 10.42.7.127
auto eth2
iface eth2 inet static
address 10.42.7.125
netmask 255.255.255.252

#A11 --> 10.42.7.120 - 10.42.7.123
auto eth3
iface eth3 inet static
address 10.42.7.121
netmask 255.255.255.252

# AURA ETH1 # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 
# Frieren
auto lo
iface lo inet loopback

#A8 --> 10.42.7.128 - 10.42.7.131
auto eth0
iface eth0 inet static
address 10.42.7.130
netmask 255.255.255.252
gateway 10.42.7.129

#A6 --> 10.42.7.132 - 10.42.7.135
auto eth1
iface eth1 inet static
address 10.42.7.133
netmask 255.255.255.252

#A7 --> 10.42.7.160 - 10.42.7.191
auto eth2
iface eth2 inet static
address 10.42.7.161
netmask 255.255.255.224

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 
# LakeKorridor
#A7 --> 10.42.7.160 - 10.42.7.191
auto eth0
iface eth0 inet static
address 10.42.7.162
netmask 255.255.255.224
gateway 10.42.7.161

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 
# Flamme
auto lo
iface lo inet loopback

#A6 --> 10.42.7.132 - 10.42.7.135
auto eth0
iface eth0 inet static
address 10.42.7.134
netmask 255.255.255.252
gateway 10.42.7.133

#A4 --> 10.42.7.136 - 10.42.7.139
auto eth1
iface eth1 inet static
address 10.42.7.137
netmask 255.255.255.252

#A3 --> 10.42.20.0 - 10.42.23.255
auto eth2
iface eth2 inet static
address 10.42.20.1
netmask 255.255.252.0

#A2 --> 10.42.7.140 - 10.42.7.143
auto eth3
iface eth3 inet static
address 10.42.7.141
netmask 255.255.255.252

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 
# Himmel
auto lo
iface lo inet loopback

#A4 --> 10.42.7.136 - 10.42.7.139
auto eth0
iface eth0 inet static
address 10.42.7.138
netmask 255.255.255.252
gateway 10.42.7.137

#A5 --> 10.42.7.152 - 10.42.7.159
auto eth1
iface eth1 inet static
address 10.42.7.153
netmask 255.255.255.248

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 
# SchewerMountains
# A5 10.42.7.152 - 10.42.7.159
auto eth0
iface eth0 inet static
address 10.42.7.154
netmask 255.255.255.248
gateway 10.42.7.153

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 
# RohrRoad
#A3 --> 10.42.20.0 - 10.42.23.255
auto eth0
iface eth0 inet static
address 10.42.20.2
netmask 255.255.252.0
gateway 10.42.20.1

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 
# Fern
auto lo
iface lo inet loopback

#A2 --> 10.42.7.140 - 10.42.7.143
auto eth0
iface eth0 inet static
address 10.42.7.142
netmask 255.255.255.252
gateway 10.42.7.141

#A1 --> 10.42.24.0 - 10.42.31.255
auto eth1
iface eth1 inet static
address 10.42.24.1
netmask 255.255.248.0

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 
# LaubHills
#A1 --> 10.42.24.0 - 10.42.31.255
auto eth0
iface eth0 inet static
address 10.42.25.2
netmask 255.255.248.0
gateway 10.42.24.1

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 
# AppetitRegion
#A1 --> 10.42.24.0 - 10.42.31.255
auto eth0
iface eth0 inet static
address 10.42.25.3
netmask 255.255.248.0
gateway 10.42.24.1

# AURA ETH2 # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 
# Denken
auto lo
iface lo inet loopback

#A9 --> 10.42.7.124
auto eth0
iface eth0 inet static
address 10.42.7.126
netmask 255.255.255.252
gateway 10.42.7.125

#A10 --> 10.42.9.0 - 10.42.9.255
auto eth1
iface eth1 inet static
address 10.42.9.1
netmask 255.255.255.0

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 
# RoyalCapital
#A10 --> 10.42.9.0 - 10.42.9.255
auto eth0
iface eth0 inet static
address 10.42.9.2
netmask 255.255.255.0
gateway 10.42.9.1

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 
# WilleRegion
#A10 --> 10.42.9.0 - 10.42.9.255
auto eth0
iface eth0 inet static
address 10.42.9.3
netmask 255.255.255.0
gateway 10.42.9.1

# AURA ETH3 # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 
# Eisen
auto lo
iface lo inet loopback

#A11 --> 10.42.7.120 - 10.42.7.123
auto eth0
iface eth0 inet static
address 10.42.7.122
netmask 255.255.255.252
gateway 10.42.7.121

#A13 --> 10.42.7.144 - 10.42.7.151
auto eth1
iface eth1 inet static
address 10.42.7.145
netmask 255.255.255.248

#A12 --> 10.42.7.116 - 10.42.7.119
auto eth2
iface eth2 inet static
address 10.42.7.117
netmask 255.255.255.252

#A19 --> 10.42.7.104 - 10.42.7.107
auto eth3
iface eth3 inet static
address 10.42.7.105
netmask 255.255.255.252

#A14 --> 10.42.7.112 - 10.42.7.115
auto eth4
iface eth4 inet static
address 10.42.7.113
netmask 255.255.255.252

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 
# Ricther
#A13 --> 10.42.7.144 - 10.42.7.151
auto eth0
iface eth0 inet static
address 10.42.7.146
netmask 255.255.252.0
gateway 10.42.7.145

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 
# Revolte
#A13 --> 10.42.7.144 - 10.42.7.151
auto eth0
iface eth0 inet static
address 10.42.7.147
netmask 255.255.252.0
gateway 10.42.7.145

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 
# Stark
#A12 --> 10.42.7.116 - 10.42.7.119
auto eth0
iface eth0 inet static
address 10.42.7.118
netmask 255.255.252.0
gateway 10.42.7.117

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 
# Lugner
auto lo
iface lo inet loopback

#A19 --> 10.42.7.104 - 10.42.7.107
auto eth0
iface eth0 inet static
address 10.42.7.106
netmask 255.255.255.252
gateway 10.42.7.105

#A21 --> 10.42.12.0 - 10.42.15.255
auto eth1
iface eth1 inet static
address 10.42.12.1
netmask 255.255.252.0

#A20 --> 10.42.8.0 - 10.42.8.255
auto eth2
iface eth2 inet static
address 10.42.8.1
netmask 255.255.255.0

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 
# TurkRegion
#A21 --> 10.42.12.0 - 10.42.15.255
auto eth0
iface eth0 inet static
address 10.42.12.2
netmask 255.255.252.0
gateway 10.42.12.1

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 
# GrobeForest
#A20 --> 10.42.8.0 - 10.42.8.255
auto eth0
iface eth0 inet static
address 10.42.8.2
netmask 255.255.252.0
gateway 10.42.8.1

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 
# Linie
auto lo
iface lo inet loopback

#A14 --> 10.42.7.112 - 10.42.7.115
auto eth0
iface eth0 inet static
address 10.42.7.114
netmask 255.255.255.252
gateway 10.42.7.113

#A18 --> 10.42.10.0 - 10.42.11.255
auto eth1
iface eth1 inet static
address 10.42.10.1
netmask 255.255.254.0

#A15 --> 10.42.7.108 - 10.42.7.111
auto eth2
iface eth2 inet static
address 10.42.7.109
netmask 255.255.255.252

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 
# GranzChannel
#A18 --> 10.42.10.0 - 10.42.11.255
auto eth0
iface eth0 inet static
address 10.42.10.2
netmask 255.255.254.0
gateway 10.42.10.1

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 
# Lawine
auto lo
iface lo inet loopback

#A15 --> 10.42.7.108 - 10.42.7.111
auto eth0
iface eth0 inet static
address 10.42.7.110
netmask 255.255.255.252
gateway 10.42.7.109

#A16 --> 10.42.7.192 - 10.42.7.255
auto eth1
iface eth1 inet static
address 10.42.7.193
netmask 255.255.255.192

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 
# BredtRegion
#A16 --> 10.42.7.192 - 10.42.7.255
auto eth0
iface eth0 inet static
address 10.42.7.194
netmask 255.255.255.192
gateway 10.42.7.193

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 
# Heiter
auto lo
iface lo inet loopback

#A16 --> 10.42.7.192 - 10.42.7.255
auto eth0
iface eth0 inet static
address 10.42.7.195
netmask 255.255.255.192
gateway 10.42.7.193

#A17 --> 10.42.16.0 - 10.42.19.255
auto eth1
iface eth1 inet static
address 10.42.16.1
netmask 255.255.252.0

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 
# RiegelCanyon
#A17 --> 10.42.16.0 - 10.42.19.255
auto eth0
iface eth0 inet static
address 10.42.16.2
netmask 255.255.252.0
gateway 10.42.16.1

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 
# Sein
#A17 --> 10.42.16.0 - 10.42.19.255
auto eth0
iface eth0 inet static
address 10.42.16.3
netmask 255.255.252.0
gateway 10.42.16.1