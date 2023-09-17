# MarLing

Ini adalah [Marzban](https://github.com/Gozargah/Marzban) yang sudah saya tambahkan nginx untuk konfigurasi WebSocket single port. </br>
WebSocket sudah support untuk 443 TLS, 80 HTTP dan Wildcard path, contoh /enter-your-custom-path/trojan

# Yang harus dipersiapkan
- VPS dengan minimal spek 1 Core 1 GB ram
- Domain yang sudah di pointing ke CloudFlare
- Pemahaman dasar perintah Linux

# Sistem VM yang dapat digunakan

- Ubuntu 18.04 </br>
- Ubuntu 20.04 </br>
- Ubuntu 22.04 </br>
- Debian 10 </br>
- Debian 11 </br>



# Instalasi
  ```html
 apt-get update && apt-get upgrade -y && apt dist-upgrade -y && update-grub && reboot
 ```
 ```html
 wget https://raw.githubusercontent.com/GawrAme/MarXray/main/mar.sh && chmod +x mar.sh && ./mar.sh
 ```
 

 
buka webnya dengan mengunjungi https://domainmu/dashboard <br>

Admin bisa ditambahkan dengan command
```html
marzban cli admin create --sudo
 ```
Jika ingin mengubah konfigurasi env variable 
```html
nano /opt/marzban/.env
 ```
Restart service Marzban 
```html
marzban restart
 ```
 
 Saat masuk, setting host di menu kanan atas <br>
 ![Screenshot_20230404-154004_Termius](https://raw.githubusercontent.com/Agunxzzz/MarXray/main/vmess.png)
 ![Screenshot_20230404-154004_Termius](https://raw.githubusercontent.com/Agunxzzz/MarXray/main/vless.png)
 ![Screenshot_20230404-154004_Termius](https://raw.githubusercontent.com/Agunxzzz/MarXray/main/trojan.png)
 <br>
 {SERVER_IP} diatas, ganti dengan domainmu <br>
Jika ada typo atau saran bisa PM ke saya di :<a href="https://t.me/EkoLing" target=”_blank”><img src="https://img.shields.io/static/v1?style=for-the-badge&logo=Telegram&label=Telegram&message=Click%20Here&color=blue"></a><br>
<br>


