# Jarkom-Modul-4-E11-2023

Laporan resmi praktikum Jaringan Komputer modul 4 kelompok E11

| Nama                       | NRP        |
| -------------------------- | ---------- |
| Sarah Nurhasna Khairunnisa | 5025211105 |
| Tsabita Putri Ramadhany    | 5025211130 |

# Daftar Isi

- [SOAL](#soal)
- [JAWABAN](#jawaban)
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

## VLSM - GNS3
### Topologi pada GNS3

![VLSM-topologi](https://github.com/SarahNurhasna/Jarkom-Modul-4-E11-2023/assets/114993457/8d4cd376-0f8d-40aa-854d-57bc4ed09738)

### Tree VLSM

![VLSM-Tree-Jarkom-Modul-4-E11-2023](https://github.com/SarahNurhasna/Jarkom-Modul-4-E11-2023/assets/114993457/5c8fb7dc-f3ce-48e2-b507-303e64528920)

### Pembagian IP
Berikut merupakan list pembagian IP yang didapat dari hasil pencarian menggunakan metode VLSM

![image](https://github.com/SarahNurhasna/Jarkom-Modul-4-E11-2023/assets/114993457/101b33d7-5e65-4793-b7b5-b831525018da)

### Konfigurasi Network

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

![Tree](https://github.com/SarahNurhasna/Jarkom-Modul-4-E11-2023/assets/93377643/9f2d5495-f04b-4e07-b717-b3b3a6dc0010)

# Kendala
