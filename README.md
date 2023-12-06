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

https://github.com/SarahNurhasna/Jarkom-Modul-4-E11-2023/assets/114993457/d0e17a9c-c153-454a-a1d6-694e9432fc59

## CIDR - CPT

### Topologi pada CPT

![Topologi](https://github.com/SarahNurhasna/Jarkom-Modul-4-E11-2023/assets/93377643/729702ee-5b6c-42ce-927b-3f697c23d04d)

1. Buka aplikasi Cisco Packet Tracer
2. Login
3. Drag node-node yang diperlukan
4. Rename node
5. Sambungkan masing-masing node sesuai ketentuan topologi pada soal
6. Jika gagal menyambungkan, coba ganti colokan device
   ![image](https://github.com/SarahNurhasna/Jarkom-Modul-4-E11-2023/assets/93377643/128a49fd-5e48-438c-9b7a-70be2e65c759)

### Subnetting dan Labelling

1. Tentukan subnet yang ada dalam topologi dan lakukan labelling netmask terhadap masing-masing subnet
2. Gabungkan subnet paling dalam di topologi. Paling dalam berarti subnet yang paling jauh dari internet (gambar awan). Penggabungan hanya mencakup 2 subnet
3. Setelah digabungkan, ulangi penggabungan sampai menjadi sebuah subnet besar yang mencakup 1 topologi yang dimiliki

### Penghitungan Jumlah IP dan Netmask

| Subnet | Rute                                             | Jumlah IP | Netmask |
| ------ | ------------------------------------------------ | --------- | ------- |
| A1     | Fern-Switch4-AppetitRegion-Switch4-LaubHills     | 1023      | /21     |
| A2     | Flamme-Fern                                      | 2         | /30     |
| A3     | Flamme-Switch5-RohrRoad                          | 1001      | /22     |
| A4     | Flamme-Himmel                                    | 2         | /30     |
| A5     | Himmel-Switch6-SchwerMountains                   | 6         | /29     |
| A6     | Flamme-Frieren                                   | 2         | /30     |
| A7     | Frieren-Switch3-LakeKorridor                     | 25        | /27     |
| A8     | Frieren-Aura                                     | 2         | /30     |
| A9     | Aura-Denken                                      | 2         | /30     |
| A10    | Denken-Switch2-RoyalCapital-Switch2-WillieRegion | 127       | /24     |
| A11    | Aura-Eisen                                       | 2         | /30     |
| A12    | Eisen-Switch0-Stark                              | 2         | /30     |
| A13    | Eisen-Switch1-Richter-Switch1-Revolte            | 3         | /29     |
| A14    | Eisen-Linie                                      | 2         | /30     |
| A15    | Linie-Lawine                                     | 2         | /30     |
| A16    | Lawine-Switch7-BredtRegion-Heiter                | 31        | /26     |
| A17    | Heiter-Switch8-Sein-Switch8-RiegelCanyon         | 512       | /22     |
| A18    | Linie-Switch11-GranzChannel                      | 255       | /23     |
| A19    | Eisen-Lugner                                     | 2         | /30     |
| A20    | Lugner-Switch9-GrobeForest                       | 251       | /24     |
| A21    | Lugner-Switch10-TurkRegion                       | 1001      | /22     |
| Total  |                                                  | 4255      | /19     |

1. Jumlah IP dihitung dengan cara menambahkan host dalam 1 subnet
   - Misal subnet A1 (Fern-Switch4-AppetitRegion-Switch4-LaubHills)
   - Jumlah IP = Host AppetitRegion + Host LaubHills + Router Fern
   - Jumlah IP = 625 + 397 + 1
   - Jumlah IP = 1023
2. Jumlah IP subnet yang menghubungkan 2 router adalah 2 (Karena 1 + 1)
3. Penghitungan netmask menggunakan tabel pada modul

   ![image](https://github.com/SarahNurhasna/Jarkom-Modul-4-E11-2023/assets/93377643/e113d352-56ac-42bc-aa84-d0ba0c57f3e4)

   - Misal subnet A1 dengan jumlah IP 1023
   - Cari address yang mendekati 1023 (tidak boleh lebih)
   - Netmask /22 memiliki address 1024
   - Karena jarak antara 1023 dan 1024 terlalu sedikit maka menggunakan netmask yang lebih besar yaitu /21 yang memiliki address 2048

### Penghitungan Netmask untuk Subnet yang digabungkan

1. Penggabungan dari 2 subnet
2. Cari yang memiliki netmask paling kecil
3. Netmask akhir = netmask terkecil - 1
   - Misal :
   - Subnet B1 penggabungan dari A16 /26 dan A17 /22
   - Pilih netmask /22
   - Maka netmask akhir untuk B1 adalah /21

### Hasil Subnetting

#### A

![image](https://github.com/SarahNurhasna/Jarkom-Modul-4-E11-2023/assets/93377643/e76d5f99-d991-4c1b-89d0-813121c72113)
![LABELLING-A](https://github.com/SarahNurhasna/Jarkom-Modul-4-E11-2023/assets/93377643/2b6d0905-f6ec-4859-91b9-0e8daf76609a)
![A](https://github.com/SarahNurhasna/Jarkom-Modul-4-E11-2023/assets/93377643/bd54a947-55df-4a64-872a-9bd486b08790)

#### B

![image](https://github.com/SarahNurhasna/Jarkom-Modul-4-E11-2023/assets/93377643/f4111aad-9bec-45e7-bd7a-047a0e36d036)
![LABELLING-B](https://github.com/SarahNurhasna/Jarkom-Modul-4-E11-2023/assets/93377643/a4776428-49b9-444f-9179-d51bc8476fd2)
![B](https://github.com/SarahNurhasna/Jarkom-Modul-4-E11-2023/assets/93377643/f99c0dd8-368b-452b-a170-0751a52c8b99)

#### C

![image](https://github.com/SarahNurhasna/Jarkom-Modul-4-E11-2023/assets/93377643/8e0c9b4d-93a6-4538-8472-11e7978762a8)
![LABELLING-C](https://github.com/SarahNurhasna/Jarkom-Modul-4-E11-2023/assets/93377643/e59c9100-66cd-4800-9932-bdeff604b249)
![C](https://github.com/SarahNurhasna/Jarkom-Modul-4-E11-2023/assets/93377643/40674d16-19fb-47e3-a2fb-40330576ee1c)

#### D

![image](https://github.com/SarahNurhasna/Jarkom-Modul-4-E11-2023/assets/93377643/d85f981f-a6a4-45a9-8a30-f6a8efb672d2)
![LABELLING-D](https://github.com/SarahNurhasna/Jarkom-Modul-4-E11-2023/assets/93377643/62a10bdd-c0c6-4b96-85ae-6870bddfdcad)
![D2](https://github.com/SarahNurhasna/Jarkom-Modul-4-E11-2023/assets/93377643/ac159a1e-8f6a-497b-952a-531c3aaea0ac)

#### E

![image](https://github.com/SarahNurhasna/Jarkom-Modul-4-E11-2023/assets/93377643/9b74c126-7adb-4d8b-890a-a822d10bd07a)
![LABELLING-E](https://github.com/SarahNurhasna/Jarkom-Modul-4-E11-2023/assets/93377643/3d8c7d8a-4ea9-4fcb-8918-1697415ac16c)
![E](https://github.com/SarahNurhasna/Jarkom-Modul-4-E11-2023/assets/93377643/fa0d5f66-8281-4a03-90fd-ee2c796a3fc3)

#### F

![image](https://github.com/SarahNurhasna/Jarkom-Modul-4-E11-2023/assets/93377643/0e0ac5a5-069d-4dec-8c6e-e25ba81b5447)
![LABELLING-F](https://github.com/SarahNurhasna/Jarkom-Modul-4-E11-2023/assets/93377643/fb7b8a0a-64c2-4bc5-ae7c-c5495e181b3e)
![F](https://github.com/SarahNurhasna/Jarkom-Modul-4-E11-2023/assets/93377643/282190b9-2a3e-41cb-be06-4bceab3a2e56)

#### G

![image](https://github.com/SarahNurhasna/Jarkom-Modul-4-E11-2023/assets/93377643/422beb59-a1bf-43e0-a28c-4d687a36bd8d)
![LABELLING-G](https://github.com/SarahNurhasna/Jarkom-Modul-4-E11-2023/assets/93377643/407dbf95-bffe-4e15-86b8-d526eb1bea89)
![G](https://github.com/SarahNurhasna/Jarkom-Modul-4-E11-2023/assets/93377643/ece68c26-23cf-4d2b-894a-d02a917e43a2)

#### H

![image](https://github.com/SarahNurhasna/Jarkom-Modul-4-E11-2023/assets/93377643/d10ccb0e-7d54-4f28-b199-7b0b3ceb85b4)
![LABELLING-H](https://github.com/SarahNurhasna/Jarkom-Modul-4-E11-2023/assets/93377643/f61d89d7-169d-4a62-b144-d4688f33952e)
![H](https://github.com/SarahNurhasna/Jarkom-Modul-4-E11-2023/assets/93377643/d28b6b92-31b5-4161-9178-09f48e851877)

#### I

![image](https://github.com/SarahNurhasna/Jarkom-Modul-4-E11-2023/assets/93377643/c7add32d-f225-46ac-9541-b9fee0e5201c)
![LABELLING-I](https://github.com/SarahNurhasna/Jarkom-Modul-4-E11-2023/assets/93377643/ab115f93-a4d7-4fcb-a47d-2a7525f72263)
![I](https://github.com/SarahNurhasna/Jarkom-Modul-4-E11-2023/assets/93377643/03776611-8865-47d0-8369-67e3ceaf6210)

#### J

![image](https://github.com/SarahNurhasna/Jarkom-Modul-4-E11-2023/assets/93377643/9b435029-2c1a-483b-be1c-f65316790d4f)
![LABELLING-J](https://github.com/SarahNurhasna/Jarkom-Modul-4-E11-2023/assets/93377643/fb73300f-7e25-4b7e-939f-cfa3bbbcfdc3)
![J](https://github.com/SarahNurhasna/Jarkom-Modul-4-E11-2023/assets/93377643/e3d0ab05-b566-4fb8-bd09-c979cbc39ae3)

#### K

![image](https://github.com/SarahNurhasna/Jarkom-Modul-4-E11-2023/assets/93377643/4506fe16-0f20-4205-bc7d-1dfec3caf0e4)
![LABELLING-K](https://github.com/SarahNurhasna/Jarkom-Modul-4-E11-2023/assets/93377643/5be846d7-e284-4f44-9a33-2398a1aa7d13)
![K](https://github.com/SarahNurhasna/Jarkom-Modul-4-E11-2023/assets/93377643/fc768c08-424c-4435-85a9-8241c02ceaf3)

### Tree CIDR

![image](https://github.com/SarahNurhasna/Jarkom-Modul-4-E11-2023/assets/93377643/ca205b7f-2283-4286-8c50-03f0c9d64e90)

Pembuatan Tree menggunakan hasil dari penggabungan subnet

### Penghitungan IP

- Penghitungan IP mengacu pada tabel di modul
- Misal
  - J1 dengan netmask /15
  - Pada tabel, netmask /15 memiliki 131072 Addresses
  - Karena 10.42.0.0/15 sudah dipakai I1, maka harus ada penghitungan IP untuk J1
  - 10.42.0.131072 = karena 131072 > 256 maka harus dibagi 256
  - 131072 : 256 = 512
  - Maka IP menjadi 10.42.512.0, karena 512 > 256 maka harus dibagi 256 lagi
  - 512 : 256 = 2
  - Maka IP menjadi 10.42(+2).0.0 = 10.44.0.0

### Penghitungan Broadcast

- Penghitungan Broadcast mengacu pada tabel di modul
- Broadcast = NID + Wildcard + 1 bagian depannya
- Misal
  - A1 dengan NID 10.44.0.0 memiliki netmask /21
  - Netmask /21 memiliki wildcard 0.0.7.255
  - Broadcast = 10.44.0.0 + 0.0.7.255 + 1
  - Broadcast = 10.45.7.255

#### Hasil Penghitungan IP dan Broadcast

![image](https://github.com/SarahNurhasna/Jarkom-Modul-4-E11-2023/assets/93377643/2bb1a4ef-6dbc-4798-8173-6c13543099cf)

### Subnetting

1. Masukkan IP Address dan Subnetmask untuk setiap link (FastEthernet dan Ethernet) yang terhubung
2. IP Address tidak boleh menggunakan NID
3. IP Address berdasarkan hasil subnet
4. Subnetmask berdasarkan tabel pada modul
5. Subnetting untuk client dilakukan dengan cara
   - Masuk ke client
   - Pilih tab Desktop
   - Pilih IP Configuration

#### Aura

1. FastEthernet0/1

   ![image](https://github.com/SarahNurhasna/Jarkom-Modul-4-E11-2023/assets/93377643/e35ed2ca-aaeb-4a22-ad46-3c9c78e6c83a)

2. Ethernet1/0

   ![image](https://github.com/SarahNurhasna/Jarkom-Modul-4-E11-2023/assets/93377643/168286c4-78c5-4844-b96d-e17860d1c251)

3. Ethernet1/1

   ![image](https://github.com/SarahNurhasna/Jarkom-Modul-4-E11-2023/assets/93377643/dd6cdf54-48ac-4ab9-ab93-6a9e51b0f4da)

#### Frieren

1. FastEthernet0/0

   ![image](https://github.com/SarahNurhasna/Jarkom-Modul-4-E11-2023/assets/93377643/c7a4f960-2538-4208-8c29-7c5475a3d01b)

2. FastEthernet0/1

   ![image](https://github.com/SarahNurhasna/Jarkom-Modul-4-E11-2023/assets/93377643/1610beec-c2ba-42af-82e1-3e1942d37653)

3. FastEthernet1/0

   ![image](https://github.com/SarahNurhasna/Jarkom-Modul-4-E11-2023/assets/93377643/9bb5d062-8a62-478d-b3e9-ad4b3465aa01)

#### LakeKorridor

![image](https://github.com/SarahNurhasna/Jarkom-Modul-4-E11-2023/assets/93377643/3d846953-41ce-4077-aa98-9528114b7e9d)

#### Flamme

![image](https://github.com/SarahNurhasna/Jarkom-Modul-4-E11-2023/assets/93377643/25957b40-f1b2-4535-8414-4e280f8e76d4)
![image](https://github.com/SarahNurhasna/Jarkom-Modul-4-E11-2023/assets/93377643/0eff8163-1f82-4232-8c19-145cd2168f0c)
![image](https://github.com/SarahNurhasna/Jarkom-Modul-4-E11-2023/assets/93377643/a3f1a55f-4852-499d-a1da-ec92cf473558)
![image](https://github.com/SarahNurhasna/Jarkom-Modul-4-E11-2023/assets/93377643/30806217-5866-44af-b139-a67cdb7894e2)

#### Fern

![image](https://github.com/SarahNurhasna/Jarkom-Modul-4-E11-2023/assets/93377643/93abcea6-6c56-479d-9f55-0b2f67e0da17)
![image](https://github.com/SarahNurhasna/Jarkom-Modul-4-E11-2023/assets/93377643/65e2f08a-94df-4e99-a632-e93152920016)

#### LaubHills

![image](https://github.com/SarahNurhasna/Jarkom-Modul-4-E11-2023/assets/93377643/0bac170d-7d5d-4fc7-8351-5a99b7e91647)

#### AppetitRegion

![image](https://github.com/SarahNurhasna/Jarkom-Modul-4-E11-2023/assets/93377643/aa1fff15-2326-4fcb-9fd5-f2c6a775091d)

#### RohrRoad

![image](https://github.com/SarahNurhasna/Jarkom-Modul-4-E11-2023/assets/93377643/1e1173a7-b3c9-48f9-a28f-fc14e12155bd)

#### Himmel

![image](https://github.com/SarahNurhasna/Jarkom-Modul-4-E11-2023/assets/93377643/11a0cecd-c293-4ed9-9f1c-9530b1510b99)
![image](https://github.com/SarahNurhasna/Jarkom-Modul-4-E11-2023/assets/93377643/2893d8c5-aa81-4914-ad9d-d0a9b6a6ca83)

#### SchwerMountains

![image](https://github.com/SarahNurhasna/Jarkom-Modul-4-E11-2023/assets/93377643/09910b1b-eacc-42d0-9fef-cf317e3942c0)

#### Denken

![image](https://github.com/SarahNurhasna/Jarkom-Modul-4-E11-2023/assets/93377643/17246243-b0e2-4c6b-858c-fcff0fba30b6)
![image](https://github.com/SarahNurhasna/Jarkom-Modul-4-E11-2023/assets/93377643/c73a2ed5-8d2b-4dd3-b0e4-bf319a57b1be)

#### RoyalCapital

![image](https://github.com/SarahNurhasna/Jarkom-Modul-4-E11-2023/assets/93377643/9122ca97-33f7-44d8-8991-d2a56c07baf1)

#### WillieRegion

![image](https://github.com/SarahNurhasna/Jarkom-Modul-4-E11-2023/assets/93377643/0e97784d-f23c-4866-a976-dfbeeb39d2a4)

### Routing

#### Aura

```bash
10.45.0.0/24 via 10.45.1.2
10.44.64.0/27 via 10.44.128.2
10.44.32.0/30 via 10.44.128.2
10.44.8.0/30 via 10.44.128.2
10.44.0.0/21 via 10.44.128.2
10.44.16.0/22 via 10.44.128.2
10.44.20.8/30 via 10.44.128.2
10.44.20.0/29 via 10.44.128.2
10.42.64.0/29 via 10.43.0.2
10.42.144.0/30 via 10.43.0.2
10.42.136.0/30 via 10.43.0.2
10.42.128.0/26 via 10.42.136.2
10.42.123.0/24 via 10.42.136.2
10.42.32.0/30 via 10.43.0.2
10.42.8.0/30 via 10.42.32.2
10.44.16.0/23 via 10.42.32.2
10.42.4.0/26 via 10.42.8.2
10.42.0.0/22 via 10.44.16.2
```

#### Frieren

```bash
0.0.0.0/0 via 192.177.128.1
192.177.16.0/22 via 192.177.32.2
192.177.8.0/30 via 192.177.32.2
192.177.0.0/21 via 192.177.32.2
192.177.20.8/30 via 192.177.32.2
192.177.20.0/29 via 192.177.32.2
```

#### Flamme

```bash
0.0.0.0/0 via 192.177.32.1
192.177.0.0/21 via 192.177.8.2
192.177.20.0/29 via 192.177.20.10
```

#### Fern

```bash
0.0.0.0/0 via 192.177.8.1
```

#### Himmel

```bash
0.0.0.0/0 via 192.177.20.9
```

#### Denken

```bash
0.0.0.0/0 via 192.178.1.1
```

#### Eisen

```bash
0.0.0.0/0 via 192.176.0.1
192.175.128.0/26 via 192.175.136.2
192.175.123.0/24 via 192.175.136.2
192.177.16.0/23 via 192.175.32.2
192.175.8.0/23 via 192.175.32.2
192.175.4.0/26 via 192.175.32.2
192.175.0.0/22 via 192.175.32.2
```

#### Lugner

```bash
0.0.0.0/0 via 192.175.136.1
```

#### Linie

```bash
0.0.0.0/0 via 192.175.32.1
192.175.4.0/26 via 192.175.8.2
192.175.0.0/22 via 192.175.8.2
```

#### Lawine

```bash
0.0.0.0/0 via 192.175.8.1
192.175.0.0/22 via 192.175.4.3
```

#### Heiter

```bash
0.0.0.0/0 via 192.175.4.1
```

# Testing Ping

![image](https://github.com/SarahNurhasna/Jarkom-Modul-4-E11-2023/assets/93377643/e82a26db-ca2f-4cb1-9ed4-a7ffcdbaed55)

# Kendala

- Kurang teliti dalam konfigurasi dan routing VLSM di GNS3 sehingga sempat ada node yang tidak bisa di ping
- Typo saat subentting
- Topologi terlalu rumit sehingga proses subnetting harus menggunakan bantuan tree subnet
