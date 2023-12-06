route add -net <NID subnet> netmask <netmask> gw <IP gateway>

# default routing
# FERN --> eth0 flamme
up route add -net 0.0.0.0 netmask 0.0.0.0 gw 10.42.7.134

# HIMMEL --> eth0 flamme
up route add -net 0.0.0.0 netmask 0.0.0.0 gw 10.42.7.134

# DENKEN --> eth2 aura
up route add -net 0.0.0.0 netmask 0.0.0.0 gw 10.42.7.125

# LUGNER --> eth0 eisen
up route add -net 0.0.0.0 netmask 0.0.0.0 gw 10.42.7.122

# HEITER --> eth0 lawine
up route add -net 0.0.0.0 netmask 0.0.0.0 gw 10.42.7.110

# FLAMME
# A1 (Fern-client) - eth0 fern
up route add -net 10.42.24.0 netmask 255.255.248.0 gw 10.42.7.142
# A5 (himmel-client) - eth0 himmel
up route add -net 10.42.7.152 netmask 255.255.255.248 gw 10.42.7.138

# FRIEREN
# A2 (flamme-fern) - eth0 flamme
up route add -net 10.42.7.140 netmask 255.255.255.252 gw 10.42.7.134
# A1 (fern-client) - eth0 flamme
up route add -net 10.42.24.0 netmask 255.255.248.0 gw 10.42.7.134
# A3 (flamme-client) - eth0 flamme
up route add -net 10.42.20.0 netmask 255.255.252.0 gw 10.42.7.134
# A4 (flamme-himmel) - eth0 flamme
up route add -net 10.42.7.136 netmask 255.255.255.252 gw 10.42.7.134
# A5 (himmel-client) - eth0 flamme
up route add -net 10.42.7.152 netmask 255.255.255.248 gw 10.42.7.134

# LAWINE
# A17 (Heiter-client) - eth0 heiter
up route add -net 10.42.16.0 netmask 255.255.252.0 gw 10.42.7.195

# LINIE
# A16 (Lawine-client-heiter) - eth0 lawine
up route add -net 10.42.7.192 netmask 255.255.255.192 gw 10.42.7.110
# A17 (Heiter-client) - eth0 lawine
up route add -net 10.42.16.0 netmask 255.255.252.0 gw 10.42.7.110

# EISEN
# eisen-lugner
# A21 (Lugner-turkRegion) - eth0 lugner
up route add -net 10.42.12.0 netmask 255.255.252.0 gw 10.42.7.106
# A20 (lugner-grobeForest) - eth0 lugner
up route add -net 10.42.8.0 netmask 255.255.255.0 gw 10.42.7.106

# Eisen-linie
# A18 (linie-granzChannel) - eth0 linie
up route add -net 10.42.10.0 netmask 255.255.254.0 gw 10.42.7.114
# A15 (linie-lawine) - eth0 linie
up route add -net 10.42.7.108 netmask 255.255.255.252 gw 10.42.7.114
# A16 (Lawine-client-heiter) - eth0 linie
up route add -net 10.42.7.192 netmask 255.255.255.192 gw 10.42.7.114
# A17 (Heiter-client) - eth0 linie
up route add -net 10.42.16.0 netmask 255.255.252.0 gw 10.42.7.114

# AURA
# Frieren
# A7 (frieren-lakeKorridor) - eth0 frieren
up route add -net 10.42.7.160 netmask 255.255.255.224 gw 10.42.7.130
# A6 (frieren-flamme) - eth0 frieren
up route add -net 10.42.7.132 netmask 255.255.255.252 gw 10.42.7.130
# A2 (flamme-fern) - eth0 frieren v
up route add -net 10.42.7.140 netmask 255.255.255.252 gw 10.42.7.130
# A1 (fern-client) - eth0 frieren
up route add -net 10.42.24.0 netmask 255.255.248.0 gw 10.42.7.130
# A3 (flamme-client) - eth0 frieren
up route add -net 10.42.20.0 netmask 255.255.252.0 gw 10.42.7.130
# A4 (flamme-himmel) - eth0 frieren
up route add -net 10.42.7.136 netmask 255.255.255.252 gw 10.42.7.130
# A5 (himmel-client) - eth0 frieren
up route add -net 10.42.7.152 netmask 255.255.255.248 gw 10.42.7.130

# Denken
# A10 (denken-client) - eth0 denken
up route add -net 10.42.9.0 netmask 255.255.255.0 gw 10.42.7.126

# Eisen
# A13 (eisen-richter-revolte) - eth0 eisen
up route add -net 10.42.7.144 netmask 255.255.255.248 gw 10.42.7.122
# A12 (eisen-stark) - eth0 eisen
up route add -net 10.42.7.116 netmask 255.255.255.252 gw 10.42.7.122
# A19 (eisen-lugner) - eth0 eisen
up route add -net 10.42.7.104 netmask 255.255.255.252 gw 10.42.7.122
# A21 (lugner-TurkRegion) - eth0 eisen
up route add -net 10.42.12.0 netmask 255.255.252.0 gw 10.42.7.122
# A20 (Lugner-grobeForest) - eth0 eisen
up route add -net 10.42.8.0 netmask 255.255.255.0 gw 10.42.7.122
# A14 (eisen-linie) - eth0 eisen
up route add -net 10.42.7.112 netmask 255.255.255.252 gw 10.42.7.122
# A18 (linie-granzChannel) - eth0 eisen
up route add -net 10.42.10.0 netmask 255.255.254.0 gw 10.42.7.122
# A15 (linie-lawine) - eth0 eisen
up route add -net 10.42.7.108 netmask 255.255.255.252 gw 10.42.7.122
# A16 (lawine-client-heiter) - eth0 eisen
up route add -net 10.42.7.192 netmask 255.255.255.192 gw 10.42.7.122
# A17 (heiter-client) - eth0 eisen
up route add -net 10.42.16.0 netmask 255.255.252.0 gw 10.42.7.122
