# Panduan Perintah John the Ripper (JtR)

John the Ripper (JtR) adalah alat pemulihan kata sandi yang kuat yang mendukung berbagai jenis file dan protokol. Panduan ini memberikan contoh dan penjelasan tentang cara menggunakan JtR untuk memecahkan kata sandi dari berbagai jenis file.

---
## 1. File Zip
### Langkah-langkah:
```bash
zip2john file.zip > file.hash
john --wordlist=rockyou.txt file.hash
john --show file.hash
```
**Penjelasan:**
- `zip2john`: Mengonversi file zip menjadi format hash yang dapat dibaca oleh John.
- `john --wordlist=rockyou.txt`: Menggunakan wordlist `rockyou.txt` untuk brute-force hash.
- `john --show`: Menampilkan kata sandi yang berhasil ditemukan.

---
## 2. File RAR
### Langkah-langkah:
```bash
rar2john file.rar > file.hash
john --wordlist=rockyou.txt file.hash
john --show file.hash
```
**Penjelasan:**
- `rar2john`: Mengonversi file RAR menjadi format hash.
- `john --wordlist=rockyou.txt`: Menggunakan wordlist `rockyou.txt` untuk brute-force hash.
- `john --show`: Menampilkan kata sandi yang berhasil ditemukan.

---
## 3. File 7z
### Langkah-langkah:
```bash
7z2john file.7z > file.hash
john --wordlist=rockyou.txt file.hash
john --show file.hash
```
**Penjelasan:**
- `7z2john`: Mengonversi file 7z menjadi format hash.
- `john --wordlist=rockyou.txt`: Menggunakan wordlist untuk mencoba memecahkan hash.
- `john --show`: Menampilkan hasil.

---
## 4. File Shadow Linux
### Langkah-langkah:
```bash
unshadow /etc/passwd /etc/shadow > file.hash
john --wordlist=rockyou.txt file.hash
john --show file.hash
```
**Penjelasan:**
- `unshadow`: Menggabungkan file `passwd` dan `shadow` menjadi format yang dapat digunakan oleh John.
- `john --wordlist=rockyou.txt`: Menjalankan brute-force attack.
- `john --show`: Menampilkan kata sandi yang berhasil ditemukan.

---
## 5. File PDF
### Langkah-langkah:
```bash
pdf2john.py file.pdf > file.hash
john --wordlist=rockyou.txt file.hash
john --show file.hash
```
**Penjelasan:**
- `pdf2john.py`: Mengonversi file PDF yang dilindungi kata sandi menjadi format hash.
- `john --wordlist=rockyou.txt`: Mencoba memecahkan hash.
- `john --show`: Menampilkan kata sandi yang berhasil ditemukan.

---
## 6. File Microsoft Office
### Langkah-langkah:
```bash
office2john file.docx > file.hash
john --wordlist=rockyou.txt file.hash
john --show file.hash
```
**Penjelasan:**
- `office2john`: Mengonversi file Office (`.docx`, `.xlsx`, `.pptx`) menjadi format hash.
- `john --wordlist=rockyou.txt`: Menggunakan wordlist untuk brute-force.
- `john --show`: Menampilkan kata sandi jika berhasil.

---
## 7. Wi-Fi WPA-PSK
### Langkah-langkah:
```bash
wpapcap2john handshake.pcap > file.hash
john --wordlist=rockyou.txt file.hash
john --show file.hash
```
**Penjelasan:**
- `wpapcap2john`: Mengonversi file handshake Wi-Fi (`.pcap`) menjadi format hash.
- `john --wordlist=rockyou.txt`: Mencoba memecahkan kata sandi Wi-Fi.
- `john --show`: Menampilkan kata sandi yang berhasil ditemukan.

---
## 8. Kunci Privat SSH
### Langkah-langkah:
```bash
ssh2john id_rsa > file.hash
john --wordlist=rockyou.txt file.hash
john --show file.hash
```
**Penjelasan:**
- `ssh2john`: Mengonversi kunci privat SSH (`id_rsa`) menjadi format hash.
- `john --wordlist=rockyou.txt`: Brute-force hash tersebut.
- `john --show`: Menampilkan passphrase yang berhasil ditemukan.

---
## Catatan:
- Pastikan Anda memiliki izin untuk menguji dan memecahkan file-file ini.
- Gunakan versi terbaru dari John the Ripper untuk mendukung jenis file dan protokol terbaru.
- Wordlist `rockyou.txt` atau `indonesia_wordlist.txt` sering digunakan, tetapi tidak selalu berhasil; pertimbangkan untuk menggunakan wordlist kustom untuk hasil yang lebih baik.

---
**Selamat Mencoba! 🚀**

