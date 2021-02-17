#!/bin/bash
# Skrip instalasi menggunakan menu VERSI 1.0
# (c)2014 Aries Aprilian
# This script is lisenced under the GNU/GPL
# ===============================================================
# Deklarasi Variabel
siapa=$USER
# FUNGSI DIMULAI
#-------------------------------------------------------------------
# Pilihan 1
pilihan_1 () {
clear
		echo "
====================================================================
Nama Host 		: $HOSTNAME
Nama Pengguna Aktif	: $USER
Jenis Prosesor		: $(uname -p)
Jenis Sistem Operasi	: $(uname -o) dengan kernel $(uname -r)
Shell yang digunakan	: $SHELL
Terminal yang digunakan	: $TERM
Waktu aktif		: $(uptime -p)
Direktori aktif		: $(pwd)
Versi Bash		:

$(bash --version)
====================================================================
"
}
#-------------------------------------------------------------------
# Pilihan 2
pilihan_2 () {
clear
		echo "
=========================================================================
PENGGUNAAN HARDDISK
1. Direktori Root 
$(df -h /)
-------------------------------------------------------------------------

2. Direktori Home
$(df -h $HOME)

-------------------------------------------------------------------------
PENGGUNAAN MEMORI 
$(free -h)
=========================================================================
"
}
#-------------------------------------------------------------------
# Pilihan 3
pilihan_3 () {
clear
echo "
1. Update Repository. Mohon menunggu updating repository 
   mungkin akan sangat lama"
apt-get update
echo "-> selesai."

echo "2. Instalasi Font Microsoft"
apt-get --yes --force-yes install ttf-mscorefonts-installer 
echo "-> selesai."

echo "3. Instalasi Gedit" 
apt-get --yes --force-yes install gedit
echo "-> selesai."

echo "4. Instalasi Inkscape"
apt-get --yes --force-yes install  inkscape 
echo "-> selesai."

echo "5. Instalasi Gimp"
apt-get --yes --force-yes install gimp
echo "-> selesai."

echo "6. Instalasi Gparted"
apt-get --yes --force-yes install gparted 
echo "-> selesai."

echo "7. Instalasi Filelight" 
apt-get --yes --force-yes install filelight  
echo "-> selesai."

echo "8. Instalasi Fceux"
apt-get --yes --force-yes install fceux 
echo "-> selesai."

echo "9. Instalasi Catfish File Search" 
apt-get --yes --force-yes install catfish 
echo "-> selesai."

echo "10. Instalasi Ubuntu Tweak" 
apt-get --yes --force-yes install ubuntu-tweak 
echo "-> selesai."

echo "Paket - paket program yang terinstall di sistem ini baca di file list_paket.txt
dpkg -l > list_paket.txt" 
}
#-------------------------------------------------------------------
#Pilihan Salah
pilihan_salah () {
clear
echo "
=====================================================================
                    NU EUCREUG ATUH MILIHNA EUY!!!
=====================================================================
"
sleep 1
continue
}
#-------------------------------------------------------------------
#Cek pengguna
cek_pengguna () {
if [ "$siapa" = "root" ]; then
	pilihan_3
else
	echo "$USER, anda bukan root" #bukan root
	sleep 1
	continue	
fi
}
#Program Utama
while true; do
clear
echo "
===================================
Halo $USER silahkan tentukan pilihan
anda :
1. Sistem informasi
2. Penggunaan Harddisk dan Memori
3. Pasang Program
0. Keluar
==================================="
read -p "Masukan pilihan anda [0-3]--> "
case $REPLY in 
	0)	break
		;;
	1)	pilihan_1
		echo -n "Tekan ENTER"
		read jawaban
		if [[ $jawaban =~ ^[0-1]$ ]]; then
		continue
		else
		echo "Pilihan Salah"
		fi
		;;
	2)	pilihan_2
		echo -n "Tekan ENTER"
		read jawaban
		if [[ $jawaban =~ ^[0-1]$ ]]; then
		continue
		else
		echo "Pilihan Salah"
		fi
		;;
	3)	cek_pengguna
		echo -n "Tekan ENTER"
		read jawaban
		if [[ $jawaban =~ ^[0-1]$ ]]; then
		continue
		else
		echo "Pilihan Salah"
		fi
		;;
	*)	pilihan_salah
		;;
esac
done
clear
echo "
 --------------------------------
|PROGRAM DIHENTIKAN DENGAN NORMAL|
|        TERIMA KASIH            |
 --------------------------------
"

