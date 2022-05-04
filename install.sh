#!/bin/bash
sudo pacman-mirrors --fasttrack
sudo pacman -Syyu --noconfirm
sudo pacman -S audacity gimp powertop zramd tlp dconf-editor match-gtk-theme gnome-shell gnome-tweaks maia-cursor-theme gnome-firmware kvantum kvantum-theme-matcha chromium gitkraken libreoffice-fresh gufw gparted telegram-desktop transmission-gtk vlc android-tools dnscrypt-proxy net-tools neofetch gcc code preload bluefish python-beautifulsoup4 rhythmbox timeshift --noconfirm
sudo tlp start 
systemctl start dnscrypt-proxy
systemctl enable dnscrypt-proxy
systemctl start tlp
systemctl enable tlp
systemctl start preload
systemctl enable preload

sudo pacman -Scc --noconfirm
sudo pacman -Qtdq --noconfirm
sudo pacman -Rns $(pacman -Qtdq) --noconfirm
rm -rf .cache/*
sudo journalctl --vacuum-time=2weeks 
sudo powertop
sudo powertop --calibrate
sudo powertop --auto-tune

#config server list for dnscrypt-proxy

#server_names = ['a-and-a', 'acsacsar-ams-ipv4', 'acsacsar-ams-ipv6', 'altername', 'altername-ipv6', 'ams-dnscrypt-nl', 'ams-dnscrypt-nl-ipv6', 'ams-doh-nl', 'ams-doh-nl-ipv6', 'bcn-dnscrypt', 'bcn-doh', 'bortzmeyer', 'bortzmeyer-ipv6', 'circl-doh', 'circl-doh-ipv6', 'cloudflare']

#nameserver ::1
#nameserver 127.0.0.1
#options edns0 single-request-reopen

#sudo chattr +i /etc/resolv.conf 
