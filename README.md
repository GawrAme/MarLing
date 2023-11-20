# MarLing

Ini adalah [Marzban](https://github.com/Gozargah/Marzban) yang sudah saya tambahkan nginx untuk konfigurasi koneksi WebSocket dan gRPC single port. </br>
WebSocket sudah support untuk 443 TLS, 80 HTTP dan Wildcard path, contoh /enter-your-custom-path/trojan </br>
gRPC sudah support untuk 443 TLS </br>

Disclaimer: Proyek ini hanya untuk pembelajaran dan komunikasi pribadi, mohon jangan menggunakannya untuk tujuan ilegal. </br>
Credit aplikasi full to [Gozargah Marzban](https://github.com/Gozargah), saya hanya edit sedikit untuk instalasi sederhana bagi pemula . </br>

# Special Thanks to
- [Gozargah](https://github.com/Gozargah/Marzban)
- [hamid-gh98](https://github.com/hamid-gh98)
- [x0sina](https://github.com/x0sina/marzban-sub)

# List Protocol yang support
- VLess
- VMess
- Trojan

# Yang harus dipersiapkan
- VPS dengan minimal spek 1 Core 1 GB ram
- Domain yang sudah di pointing ke CloudFlare
- Pemahaman dasar perintah Linux

# Sistem VM yang dapat digunakan
- Debian 10 </br>
- Debian 11 [**RECOMMENDED**] </br>
- Ubuntu 18.04 </br>
- Ubuntu 20.04 </br>
- Ubuntu 22.04 </br>



# Instalasi
  ```html
 apt-get update && apt-get upgrade -y && apt dist-upgrade -y && update-grub && reboot
 ```
Pastikan anda sudah login sebagai root sebelum menjalankan perintah dibawah
 ```html
 wget https://raw.githubusercontent.com/GawrAme/MarLing/main/mar.sh && chmod +x mar.sh && ./mar.sh
 ```
 
Setelah instalasi berhasil, Panel login / Admin bisa ditambahkan dengan command
```html
marzban cli admin create --sudo
 ```
Buka panel Marzban dengan mengunjungi https://domainmu/dashboard <br>

Jika ingin mengubah konfigurasi env variable 
```html
nano /opt/marzban/.env
 ```
Perintah Restart service Marzban 
```html
marzban restart
 ```
Perintah Cek Logs service Marzban 
```html
marzban logs
 ```
Perintah Cek update service Marzban
```html
marzban update
 ```
Jangan lupa, setiap selesai instalasi diharapkan reboot server nya satu kali dengan memasukkan perintah dibawah
```html
cat /dev/null > ~/.bash_history && history -c && reboot
 ```
# Cloudflare Sett

Pastikan SSL/TLS Setting pada cloudflare sudah di set menjadi full
![image](https://github.com/GawrAme/MarLing/assets/97426017/3aeedf09-308e-41b0-9640-50e4abb77aa0) </br>

Lalu pada tab **Network** pastikan gRPC dan WebSocket sudah ON 
![image](https://github.com/GawrAme/MarLing/assets/97426017/65d9b413-fda4-478a-99a5-b33d8e5fec3d)



# Setting Host Marzban
 
 Saat masuk ke panel, setting host di menu kanan atas <br>
 ![image](https://github.com/GawrAme/MarLing/assets/97426017/6b96bce7-39c7-4b5c-b01e-8dfdea91cb47) </br>

Lalu ubah variabel {SERVER_IP} dibawah menjadi domain yang sudah di pointing tadi <br>
# TROJAN WS
![image](https://github.com/GawrAme/MarLing/assets/97426017/191a485c-07a7-4a28-88d3-b66fa403abc7)
# VMESS WS
![image](https://github.com/GawrAme/MarLing/assets/97426017/7e8b8622-5b55-4d03-aaf3-6a30eabb62e8)
# VLESS WS
![image](https://github.com/GawrAme/MarLing/assets/97426017/ed50c2e1-6060-4773-a8bb-067e3fc5b7e4)
# TROJAN gRPC
![image](https://github.com/GawrAme/MarLing/assets/97426017/46f7c9d5-953a-4623-a814-b5f8f6a96a56)
# VMESS gRPC
![image](https://github.com/GawrAme/MarLing/assets/97426017/1bbc87ad-0653-4abc-9e6f-f18eaa6586cf)
# VLESS gRPC
![image](https://github.com/GawrAme/MarLing/assets/97426017/6e2cbaa1-4c62-4d93-b55e-142ec734de6c)
</br>

Jika ada typo atau saran bisa PM ke saya di :<a href="https://t.me/EkoLing" target=”_blank”><img src="https://img.shields.io/static/v1?style=for-the-badge&logo=Telegram&label=Telegram&message=Click%20Here&color=blue"></a><br>
Jika anda berminat bisa join ke Telegram channel saya di :<a href="https://t.me/LingVPN" target=”_blank”><img src="https://img.shields.io/static/v1?style=for-the-badge&logo=Telegram&label=Telegram&message=Click%20Here&color=blue"></a><br>
<br>

Jika menurut pean script ini membantu, boleh kira nya membelikan saya secangkir kopi melalui QRis dibawah, berapapun nominal nya saya terima 🙏 <br>
![image](https://github.com/GawrAme/MarLing/assets/97426017/096f46ba-ed4d-47c8-a887-f3f3acd595d5)

Terima kasih orang baik! 🙏 

</br>
