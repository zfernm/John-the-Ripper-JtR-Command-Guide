#!/bin/bash

RED="\e[31m"
GREEN="\e[1;32m"
BLUE="\e[1;34m"
MAGENTA="\e[35m"
INFO="${MAGENTA}[ INFO ]"
PROSES="${BLUE}[ PROSES ]"

logo() {
    echo -e "${RED}"
    echo " ######################################################### "
    echo " #             INSTALL TOOLS JOHN THE RIPPER             # "
    echo " ######################################################### "
    echo " ███████ ███████ ███████ ██████  ███    ██ ███    ███ "
    echo "     ███ ██      ██      ██   ██ ████   ██ ████  ████ "
    echo "   ███   █████   █████   ██████  ██ ██  ██ ██ ████ ██ "
    echo " ███     ██      ██      ██   ██ ██  ██ ██ ██  ██  ██ "
    echo " ███████ ██      ███████ ██   ██ ██   ████ ██      ██ "
    echo -e "${RESET}"
    echo -e "${GREEN} Tools created by ZFERNM X META4SEC ${RESET}"
    echo ""
}

logo

echo -e "${BLUE}Pilih opsi untuk menginstal:"
echo "1. Install John the Ripper Jumbo"
echo "2. Install Python dan pdf2john.py, office2john.py"
echo "3. Install libpcap-dev (untuk WPA handshake)"
echo "4. Install Semua"
echo "5. Install rockyou.txt"
echo "6. Keluar"
echo ""

read -p "Masukkan pilihan Anda (1-5): " pilihan

case $pilihan in
  1)
    echo -e "${PROSES} Menginstall John the Ripper Jumbo..."
    sudo apt update
    sudo apt install john -y
    echo -e "${INFO} John the Ripper Jumbo telah terinstall!"
    ;;
  2)
    echo -e "${PROSES} Menginstall Python dan pdf2john.py, office2john.py..."
    sudo apt update
    sudo apt install python3 python3-pip -y
    echo "Python telah terinstall!"
    echo -e "${INFO} pdf2john.py dan office2john.py biasanya tersedia di direktori 'run/' dari John the Ripper."
    ;;
  3)
    echo -e "${PROSES} Menginstall libpcap-dev untuk WPA handshake..."
    sudo apt update
    sudo apt install libpcap-dev -y
    echo -e "${INFO} libpcap-dev telah terinstall!"
    ;;
  4)
    echo -e "${PROSES} Menginstall semua komponen..."
    sudo apt update
    sudo apt install john python3 python3-pip libpcap-dev -y
    echo -e "${INFO} Semua komponen telah terinstall!"
    ;;
  5)
    echo -e "${PROSES} Mengunduh rockyou.txt..."
    sudo curl -L https://github.com/brannondorsey/naive-hashcat/releases/download/data/rockyou.txt -o rockyou.txt
    echo -e "${INFO} rockyou.txt berhasil diunduh"
    ;;
  6)
    echo "Keluar dari installer. Sampai jumpa!"
    exit 0
    ;;
  *)
    echo -e "${RED} Pilihan tidak valid! Silakan jalankan ulang script dan pilih opsi yang benar."
    ;;
esac
