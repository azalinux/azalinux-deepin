#!/bin/bash -x

set -e
set -u

sh cores.sh
#xdg-user-dirs-update

sudo pacman -Syuu --noconfirm --needed
sudo pacman -S --noconfirm --needed arch-install-scripts
sudo pacman -S --noconfirm --needed os-prober
sudo pacman -S --noconfirm --needed openssh
sudo systemctl enable sshd
sudo pacman -S --noconfirm --needed dhcpcd
sudo pacman -S linux-headers --noconfirm --needed

sudo pacman -S deepin deepin-extra --noconfirm --needed

#sudo pacman -S --noconfirm --needed xorg
sudo pacman -S --noconfirm --needed xf86-video-amdgpu
sudo pacman -S --noconfirm --needed lightdm

sudo pacman -S adobe-source-sans-pro-fonts --noconfirm --needed
sudo pacman -S cantarell-fonts --noconfirm --needed
sudo pacman -S noto-fonts --noconfirm --needed
sudo pacman -S terminus-font --noconfirm --needed
sudo pacman -S ttf-bitstream-vera --noconfirm --needed
sudo pacman -S ttf-dejavu --noconfirm --needed
sudo pacman -S ttf-droid --noconfirm --needed
sudo pacman -S ttf-inconsolata --noconfirm --needed
sudo pacman -S ttf-liberation --noconfirm --needed
sudo pacman -S ttf-roboto --noconfirm --needed
sudo pacman -S ttf-ubuntu-font-family --noconfirm --needed
sudo pacman -S tamsyn-font --noconfirm --needed

sudo pacman -S pulseaudio --noconfirm --needed
sudo pacman -S pulseaudio-alsa --noconfirm --needed
sudo pacman -S pavucontrol  --noconfirm --needed
sudo pacman -S alsa-utils alsa-plugins alsa-lib alsa-firmware --noconfirm --needed
sudo pacman -S gstreamer --noconfirm --needed
sudo pacman -S gst-plugins-good gst-plugins-bad gst-plugins-base gst-plugins-ugly --noconfirm --needed
sudo pacman -S volumeicon --noconfirm --needed
sudo pacman -S playerctl --noconfirm --needed

sudo pacman -S --noconfirm --needed baobab
sudo pacman -S --noconfirm --needed accountsservice
sudo pacman -S --noconfirm --needed ffmpegthumbnailer
sudo pacman -S --noconfirm --needed gnome-disk-utility
#sudo pacman -S --noconfirm --needed gnome-keyring


sudo pacman -S --noconfirm --needed grub-customizer 
sudo pacman -S --noconfirm --needed wget
sudo pacman -S --noconfirm --needed net-tools
sudo pacman -S --noconfirm --needed htop
sudo pacman -S --noconfirm --needed gtop
sudo pacman -S --noconfirm --needed gparted
sudo pacman -S --noconfirm --needed simplescreenrecorder
sudo pacman -S --noconfirm --needed filezilla
#sudo pacman -S --noconfirm --needed atom
sudo pacman -S --noconfirm --needed geany
sudo pacman -S --noconfirm --needed meld
sudo pacman -S --noconfirm --needed catfish
sudo pacman -S --noconfirm --needed unace unrar zip unzip sharutils uudeview arj cabextract file-roller
sudo pacman -S --noconfirm --needed firefox-developer-edition
sudo pacman -S --noconfirm --needed qbittorrent
sudo pacman -S --noconfirm --needed neofetch
sudo pacman -S --noconfirm --needed chromium
sudo pacman -S --noconfirm --needed libreoffice-fresh
sudo pacman -S --noconfirm --needed mpv
sudo pacman -S --noconfirm --needed deepin-icon-theme
sudo pacman -S --noconfirm --needed breeze-icons
sudo pacman -S --noconfirm --needed elementary-icon-theme
sudo pacman -S --noconfirm --needed adapta-gtk-theme


#sh sddm.sh
sh wallpaper.sh

sh samba_install.sh

sh trizen.sh

trizen -S --noconfirm --needed --noedit pamac-aur
trizen -S --noconfirm --needed --noedit thunar-shares-plugin
trizen -S --noconfirm --needed --noedit flat-remix
trizen -S --noconfirm --needed --noedit starlabstheme-gtk-git
trizen -S --noconfirm --needed --noedit vivaldi
#trizen -S --noconfirm --needed --noedit vivaldi-codecs-ffmpeg-extra-bin
trizen -S --noconfirm --needed --noedit realvnc-vnc-server
trizen -S --noconfirm --needed --noedit realvnc-vnc-viewer
#trizen -S --noconfirm --needed --noedit vlc-nightly
trizen -S --noconfirm --needed --noedit inxi-git

#sh xfce_custom_desktop.sh

sudo /usr/bin/vnclicense -add QXHZK-RNRVT-TE3RG-ARWFF-V7WQA

sudo systemctl enable vncserver-x11-serviced

#sudo systemctl enable NetworkManager