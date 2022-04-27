#!/bin/bash
sudo pacman-mirrors --fasttrack
sudo pacman -Syyu --noconfirm
sudo pacman -S audacity gimp tlp libreoffice-fresh telegram-desktop transmission-gtk vlc android-tools dnscrypt-proxy net-tools neofetch gcc code preload bluefish python-beautifulsoup4 rhythmbox maia-cursor-theme --noconfirm
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
reboot

#config server list for dnscrypt-proxy

#server_names = ['a-and-a', 'acsacsar-ams-ipv4', 'acsacsar-ams-ipv6', 'altername', 'altername-ipv6', 'ams-dnscrypt-nl', 'ams-dnscrypt-nl-ipv6', 'ams-doh-nl', 'ams-doh-nl-ipv6', 'bcn-dnscrypt', 'bcn-doh', 'bortzmeyer', 'bortzmeyer-ipv6', 'circl-doh', 'circl-doh-ipv6', 'cloudflare']

#nameserver ::1
#nameserver 127.0.0.1
#options edns0 single-request-reopen

#sudo chattr +i /etc/resolv.conf 
