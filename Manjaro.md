# NVIDIA – Optimus Laptops

yay -S optimus-manager

## Reboolt 

yay -S optimus-manager-qt

https://github.com/Askannz/optimus-manager/wiki/A-guide--to-power-management-options

# ToucheggKDE

yay -S touchegg

sudo systemctl enable touchegg.service

sudo systemctl start touchegg

git clone https://github.com/NayamAmarshe/ToucheggKDE.git

cd Touchegg*

mkdir ~/.config/touchegg

cp touch* ~/.config/touchegg/

## Pinch Gestures:

   - 3 Fingers PINCH IN/OUT: Desktops Grid View
   - 2 Fingers PINCH IN/OUT: Zoom IN/OUT
   - [Browsers] 4 Fingers PINCH IN/OUT: Switch Tabs



## acer predator turbo and rgb keyboard linux module
sudo pacman -S linux-headers

sudo pacman -S rsync

git clone https://github.com/JafarAkhondali/acer-predator-turbo-and-rgb-keyboard-linux-module

cd "acer-predator-turbo-and-rgb-keyboard-linux-module"

sudo chmod +x ./*.sh

sudo ./install_service.sh

sudo cp  ./facer_rgb.py  /usr/bin/

curl https://raw.githubusercontent.com/ramonssouza/post_install_arch/main/rgb-keyboard-start.desktop > ~/.config/autostart/rgb-keyboard-start.desktop

### https://www.vivaolinux.com.br/topico/GRUB/Kernel-Panic-em-novo-hardware-apos-clone-com-dd/

# Libreoffice 👨‍💻️

sudo pacman -S libreoffice-qt5 libreoffice-still-pt-br jre-openjdk

yay -S libreoffice-extension-vero

## Microsoft fonts

yay -S ttf-ms-win11-auto

## Google fonts Gui

yay -S typecatcher

# "Mapeamento da mesa digitalizadora Wacom Intuos S Pad pad"

sudo pacman -S kcm-wacomtablet

# "Suporte para extração e criação de arquivos compactados"

sudo pacman -S cabextract lzip p7zip unrar

# "Instalando Calibre!"

sudo pacman -S calibre

# "Instalando o Xournall"

sudo pacman -S xournalpp

# "Instalando o Htop!"

sudo pacman -S htop

# "Instalando o Vim!"

sudo pacman -S vim neovim

sudo pacman -S xclip

yay -S neovim-symlinks

# "Instalando timeshift!"

yay -S timeshift

# "Instalando rclone!"

sudo pacman -S rclone

# "Instalando bitwarden 👨‍💻️"

sudo pacman -S bitwarden

# "Instalação dos codecs multimídia"

sudo pacman -S ffmpeg gst-plugins-ugly gst-plugins-good gst-plugins-base gst-plugins-bad gst-libav gstreamer

# "Instalando o OBS 👨‍💻️"

sudo pacman -S obs-studio

# "Insalação do Audacity"

sudo pacman -S audacity

# "Instalação do Gimp"

sudo pacman -S gimp

# "Instalação do Davinci-resolve"

yay -S davinci-resolve

# "Instalano cmake!"

sudo pacman -S cmake

# "Instalano R!"

sudo pacman -S r

yay -S rstudio-desktop-bin

sudo pacman -S python3 python-virtualenv python-pip 

# "Instalando o jamovi!"

yay -S r-jmvcore

# "Instalando o openboard!"

yay -S openboard

# "Aplicativos Geo 👨‍💻️"

sudo pacman -S qgis

yay -S grass

yay -S saga-gis

#######################################
echo "Instalando Steam"
#######################################

sudo pacman -S steam

# "Motagem de Hd!"

#sudo blkid

#echo 'UUID=94B86B93B86B7322 /mnt/Backup ntfs3 iocharset=utf8,uid=1000,gid=1000,umask=000,dmask=027,fmask=137 0 0' | tee -a /etc/fstab

#Mudar permissões: chmod -R 777 /mydirectory/...

#echo "Instalando VS Code!"

yay -S visual-studio-code-bin

# "Instalando Zoteiro"

yay -S zotero-bin

yay -S obsidian-appimage

sudo pacman -S pandoc

sudo pacman -S texlive-most texlive-core texlive-bin

paru -S whatsapp-nativefier

# Real-time Microphone Noise Cancellation on Linux

# https://medium.com/@gamunu/linux-noise-cancellation-b9f997f6764d

yay -S wonderwall

