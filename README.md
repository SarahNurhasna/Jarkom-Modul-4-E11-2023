# Jarkom-Modul-4-E11-2023

Laporan resmi praktikum Jaringan Komputer modul 4 kelompok E11

| Nama                       | NRP        |
| -------------------------- | ---------- |
| Sarah Nurhasna Khairunnisa | 5025211105 |
| Tsabita Putri Ramadhany    | 5025211130 |

# Daftar Isi

- [SOAL](#soal)
- [JAWABAN](#jawaban)
  - [Pembagian Netmask](#pembagian-netmask)
  - [VLSM-GNS3](#vlsm---gns3)
  - [CIDR-CPT](#cidr---cpt)
- [KENDALA](#kendala)

# Soal

![Screenshot 2023-11-28 235649](https://github.com/SarahNurhasna/Jarkom-Modul-4-E11-2023/assets/114993457/3325deec-d98b-4730-845d-49ac105e51a7)

1. Soal shift dikerjakan pada Cisco Packet Tracer dan GNS3 menggunakan metode perhitungan CLASSLESS yang berbeda.
   Keterangan: Bila di CPT menggunakan VLSM, maka di GNS3 menggunakan CIDR atau sebaliknya
2. Jika tidak ada pemberitahuan revisi soal dari asisten, berarti semua soal BERSIFAT BENAR dan DAPAT DIKERJAKAN.
3. Untuk di GNS3 CLOUD merupakan NAT1 jangan sampai salah agar bisa terkoneksi internet.
4. Pembagian IP menggunakan Prefix IP yang telah ditentukan pada modul pengenalan
5. Pembagian IP dan routing harus SE-EFISIEN MUNGKIN.
6. Gambar topologi yang lebih jelas dapat diakses pada link berikut

Hal yang perlu diperhatikan

1. Gunakan prefix IP sesuai dengan prefix IP masing-masing.
2. Terdapat template spreadsheet untuk mempermudah penilaian, gunakan template tersebut untuk melakukan penghitungan subnetting.
3. Hasil perhitungan subnetting dan pohon pembagian IP serta file .pkt di submit pada link di atas.
4. File yang didemokan adalah file .pkt yang telah disubmit
5. Pengurangan nilai akan dilakukan ketika:

   a. Melanggar salah satu dari tulisan diatas.

   b. Tidak menggunakan PREFIX ip yang ditetapkan sebelumnya

   c. Hasil perhitungan untuk VLSM / CIDR, berbeda dengan di CPT / GNS3

   d. Pembagian IP kurang efisien

   e. Routing kurang efisien

   f. Tidak bisa menjelaskan cara perhitungan VLSM dan CIDR

# Jawaban

## Pembagian Netmask

| Subnet | Jumlah IP | Netmask |
| ------ | --------- | ------- |
| A1     | 1023      | /21     |
| A2     | 2         | /30     |
| A3     | 1001      | /22     |
| A4     | 2         | /30     |
| A5     | 6         | /29     |
| A6     | 2         | /30     |
| A7     | 25        | /27     |
| A8     | 2         | /30     |
| A9     | 2         | /30     |
| A10    | 127       | /24     |
| A11    | 2         | /30     |
| A12    | 2         | /30     |
| A13    | 3         | /29     |
| A14    | 2         | /30     |
| A15    | 2         | /30     |
| A16    | 31        | /26     |
| A17    | 512       | /22     |
| A18    | 255       | /23     |
| A19    | 2         | /30     |
| A20    | 251       | /24     |
| A21    | 1001      | /22     |
| Jumlah | 4255      | /19     |

## VLSM - GNS3

### Topologi pada GNS3

![VLSM-topologi](https://github.com/SarahNurhasna/Jarkom-Modul-4-E11-2023/assets/114993457/8d4cd376-0f8d-40aa-854d-57bc4ed09738)

### Tree VLSM

![VLSM-Tree-Jarkom-Modul-4-E11-2023](https://github.com/SarahNurhasna/Jarkom-Modul-4-E11-2023/assets/114993457/5c8fb7dc-f3ce-48e2-b507-303e64528920)

### Pembagian IP

Berikut merupakan list pembagian IP yang didapat dari hasil pencarian menggunakan metode VLSM

![image](https://github.com/SarahNurhasna/Jarkom-Modul-4-E11-2023/assets/114993457/101b33d7-5e65-4793-b7b5-b831525018da)

### Konfigurasi Network

#### Aura

```bash
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
```

#### Frieren

```bash
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
```

#### LakeKorridor

```bash
#A7 --> 10.42.7.160 - 10.42.7.191
auto eth0
iface eth0 inet static
address 10.42.7.162
netmask 255.255.255.224
gateway 10.42.7.161
```

#### Flamme

```bash
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
```

#### Himmel

```bash
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
```

#### SchewerMountains

```bash
# A5 10.42.7.152 - 10.42.7.159
auto eth0
iface eth0 inet static
address 10.42.7.154
netmask 255.255.255.248
gateway 10.42.7.153
```

#### RohrRoad

```bash
#A3 --> 10.42.20.0 - 10.42.23.255
auto eth0
iface eth0 inet static
address 10.42.20.2
netmask 255.255.252.0
gateway 10.42.20.1
```

#### Fern

```bash
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
```

#### LaubHills

```bash
#A1 --> 10.42.24.0 - 10.42.31.255
auto eth0
iface eth0 inet static
address 10.42.25.2
netmask 255.255.248.0
gateway 10.42.24.1
```

#### AppetitRegion

```bash
#A1 --> 10.42.24.0 - 10.42.31.255
auto eth0
iface eth0 inet static
address 10.42.25.3
netmask 255.255.248.0
gateway 10.42.24.1
```

#### Denken

```bash
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
```

#### RoyalCapital

```bash
#A10 --> 10.42.9.0 - 10.42.9.255
auto eth0
iface eth0 inet static
address 10.42.9.2
netmask 255.255.255.0
gateway 10.42.9.1
```

#### WilleRegion

```bash
#A10 --> 10.42.9.0 - 10.42.9.255
auto eth0
iface eth0 inet static
address 10.42.9.3
netmask 255.255.255.0
gateway 10.42.9.1
```

#### Eisen

```bash
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
```

#### Ricther

```bash
#A13 --> 10.42.7.144 - 10.42.7.151
auto eth0
iface eth0 inet static
address 10.42.7.146
netmask 255.255.252.0
gateway 10.42.7.145
```

#### Revolte

```bash
#A13 --> 10.42.7.144 - 10.42.7.151
auto eth0
iface eth0 inet static
address 10.42.7.147
netmask 255.255.252.0
gateway 10.42.7.145
```

#### Stark

```bash
#A12 --> 10.42.7.116 - 10.42.7.119
auto eth0
iface eth0 inet static
address 10.42.7.118
netmask 255.255.252.0
gateway 10.42.7.117
```

#### Lugner

```bash
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
```

#### TurkRegion

```bash
#A21 --> 10.42.12.0 - 10.42.15.255
auto eth0
iface eth0 inet static
address 10.42.12.2
netmask 255.255.252.0
gateway 10.42.12.1
```

#### GrobeForest

```bash
#A20 --> 10.42.8.0 - 10.42.8.255
auto eth0
iface eth0 inet static
address 10.42.8.2
netmask 255.255.252.0
gateway 10.42.8.1
```

#### Linie

```bash
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
```

#### GranzChannel

```bash
#A18 --> 10.42.10.0 - 10.42.11.255
auto eth0
iface eth0 inet static
address 10.42.10.2
netmask 255.255.254.0
gateway 10.42.10.1
```

#### Lawine

```bash
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
```

#### BredtRegion

```bash
#A16 --> 10.42.7.192 - 10.42.7.255
auto eth0
iface eth0 inet static
address 10.42.7.194
netmask 255.255.255.192
gateway 10.42.7.193
```

#### Heiter

```bash
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
```

#### RiegelCanyon

```bash
#A17 --> 10.42.16.0 - 10.42.19.255
auto eth0
iface eth0 inet static
address 10.42.16.2
netmask 255.255.252.0
gateway 10.42.16.1
```

#### Sein

```bash
#A17 --> 10.42.16.0 - 10.42.19.255
auto eth0
iface eth0 inet static
address 10.42.16.3
netmask 255.255.252.0
gateway 10.42.16.1
```

### Routing

Routing di lakukan pada semua router

#### FERN

```bash
# FERN --> eth0 flamme
up route add -net 0.0.0.0 netmask 0.0.0.0 gw 10.42.7.134
```

#### HIMMEL

```bash
# HIMMEL --> eth0 flamme
up route add -net 0.0.0.0 netmask 0.0.0.0 gw 10.42.7.134
```

#### DENKEN

```bash
# DENKEN --> eth2 aura
up route add -net 0.0.0.0 netmask 0.0.0.0 gw 10.42.7.125
```

#### LUGNER

```bash
# LUGNER --> eth0 eisen
up route add -net 0.0.0.0 netmask 0.0.0.0 gw 10.42.7.122
```

#### HEITER

```bash
# HEITER --> eth0 lawine
up route add -net 0.0.0.0 netmask 0.0.0.0 gw 10.42.7.110
```

#### FLAMME

```bash
# A1 (Fern-client) - eth0 fern
up route add -net 10.42.24.0 netmask 255.255.248.0 gw 10.42.7.142
# A5 (himmel-client) - eth0 himmel
up route add -net 10.42.7.152 netmask 255.255.255.248 gw 10.42.7.138
```

#### FRIEREN

```bash
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
```

#### LAWINE

```bash
# A17 (Heiter-client) - eth0 heiter
up route add -net 10.42.16.0 netmask 255.255.252.0 gw 10.42.7.195
```

#### LINIE

```bash
# A16 (Lawine-client-heiter) - eth0 lawine
up route add -net 10.42.7.192 netmask 255.255.255.192 gw 10.42.7.110
# A17 (Heiter-client) - eth0 lawine
up route add -net 10.42.16.0 netmask 255.255.252.0 gw 10.42.7.110
```

#### EISEN

```bash
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
```

#### AURA

```bash
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
```

### Testing

## CIDR - CPT

### Topologi pada CPT

![Topologi](https://github.com/SarahNurhasna/Jarkom-Modul-4-E11-2023/assets/93377643/729702ee-5b6c-42ce-927b-3f697c23d04d)

### Subnetting dan Labelling

(JELASIN TUTOR LABELLING DAN SUBNETTING)

#### A

![LABELLING-A](https://github.com/SarahNurhasna/Jarkom-Modul-4-E11-2023/assets/93377643/2b6d0905-f6ec-4859-91b9-0e8daf76609a)
![A](https://github.com/SarahNurhasna/Jarkom-Modul-4-E11-2023/assets/93377643/bd54a947-55df-4a64-872a-9bd486b08790)

#### B

![LABELLING-B](https://github.com/SarahNurhasna/Jarkom-Modul-4-E11-2023/assets/93377643/a4776428-49b9-444f-9179-d51bc8476fd2)
![B](https://github.com/SarahNurhasna/Jarkom-Modul-4-E11-2023/assets/93377643/f99c0dd8-368b-452b-a170-0751a52c8b99)

#### C

![LABELLING-C](https://github.com/SarahNurhasna/Jarkom-Modul-4-E11-2023/assets/93377643/e59c9100-66cd-4800-9932-bdeff604b249)
![C](https://github.com/SarahNurhasna/Jarkom-Modul-4-E11-2023/assets/93377643/40674d16-19fb-47e3-a2fb-40330576ee1c)

#### D

![LABELLING-D](https://github.com/SarahNurhasna/Jarkom-Modul-4-E11-2023/assets/93377643/62a10bdd-c0c6-4b96-85ae-6870bddfdcad)
![D2](https://github.com/SarahNurhasna/Jarkom-Modul-4-E11-2023/assets/93377643/ac159a1e-8f6a-497b-952a-531c3aaea0ac)

#### E

![LABELLING-E](https://github.com/SarahNurhasna/Jarkom-Modul-4-E11-2023/assets/93377643/3d8c7d8a-4ea9-4fcb-8918-1697415ac16c)
![E](https://github.com/SarahNurhasna/Jarkom-Modul-4-E11-2023/assets/93377643/fa0d5f66-8281-4a03-90fd-ee2c796a3fc3)

#### F

![LABELLING-F](https://github.com/SarahNurhasna/Jarkom-Modul-4-E11-2023/assets/93377643/fb7b8a0a-64c2-4bc5-ae7c-c5495e181b3e)
![F](https://github.com/SarahNurhasna/Jarkom-Modul-4-E11-2023/assets/93377643/282190b9-2a3e-41cb-be06-4bceab3a2e56)

#### G

![LABELLING-G](https://github.com/SarahNurhasna/Jarkom-Modul-4-E11-2023/assets/93377643/407dbf95-bffe-4e15-86b8-d526eb1bea89)
![G](https://github.com/SarahNurhasna/Jarkom-Modul-4-E11-2023/assets/93377643/ece68c26-23cf-4d2b-894a-d02a917e43a2)

#### H

![LABELLING-H](https://github.com/SarahNurhasna/Jarkom-Modul-4-E11-2023/assets/93377643/f61d89d7-169d-4a62-b144-d4688f33952e)
![H](https://github.com/SarahNurhasna/Jarkom-Modul-4-E11-2023/assets/93377643/d28b6b92-31b5-4161-9178-09f48e851877)

#### I

![LABELLING-I](https://github.com/SarahNurhasna/Jarkom-Modul-4-E11-2023/assets/93377643/ab115f93-a4d7-4fcb-a47d-2a7525f72263)
![I](https://github.com/SarahNurhasna/Jarkom-Modul-4-E11-2023/assets/93377643/03776611-8865-47d0-8369-67e3ceaf6210)

#### J

![LABELLING-J](https://github.com/SarahNurhasna/Jarkom-Modul-4-E11-2023/assets/93377643/fb73300f-7e25-4b7e-939f-cfa3bbbcfdc3)
![J](https://github.com/SarahNurhasna/Jarkom-Modul-4-E11-2023/assets/93377643/e3d0ab05-b566-4fb8-bd09-c979cbc39ae3)

#### K

![LABELLING-K](https://github.com/SarahNurhasna/Jarkom-Modul-4-E11-2023/assets/93377643/5be846d7-e284-4f44-9a33-2398a1aa7d13)
![K](https://github.com/SarahNurhasna/Jarkom-Modul-4-E11-2023/assets/93377643/fc768c08-424c-4435-85a9-8241c02ceaf3)

### Tree CIDR

![image](https://github.com/SarahNurhasna/Jarkom-Modul-4-E11-2023/assets/93377643/ca205b7f-2283-4286-8c50-03f0c9d64e90)

# Kendala

1. Kurang teliti dalam konfigurasi dan routing VLSM di GNS3 sehingga sempat ada node yang tidak bisa di ping
