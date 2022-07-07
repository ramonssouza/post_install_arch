# Optimus Switch – Another Solution for Optimus Laptops

## vide: https://discovery.endeavouros.com/nvidia/optimus-switch-another-solution-for-optimus-laptops/2021/04/
## Be sure to change the linux-headers package to match the kernel you are using. For example the zen kernel uses the linux-zen-headers package and the lts kernel uses the linux-lts-headers package.

sudo pacman -S linux-headers acpi_call-dkms mesa-demos xorg-xrandr xf86-video-intel git

## Enable acpi_call by typing:
sudo modprobe acpi_call

## Make sure that there are no video related config files on your system. Look in the following folders:

/etc/X11/
/etc/X11/xorg.conf.d/
/etc/modprobe.d/
/etc/modules-load.d/

## KDE (SDDM)
git clone https://github.com/dglt1/optimus-switch-sddm.git
cd ~/optimus-switch-sddm
chmod +x install.sh
sudo ./install.sh


## For nVidia mode – sudo set-nvidia.sh
## For Intel mode – sudo set-intel.sh

## Installing the GUI Indicator/ Switcher Optimus-Indicator

sudo pacman -S libappindicator-gtk3 libappindicator-gtk2 libnotify mesa-utils

git clone https://github.com/linesma/Optimus-indicator.git
cd Optimus-indicator
chmod a+x setup.py
sudo ./setup.py install

## Awesome Window Manager Instructions.

### Open the following file in your favorite text editor.

~/.config/awesome/autorun.sh

### Add the following line to the end of the file.

run manjaroptimus-appindicator

### Save and close the file.
### Reboot the computer to have it load.


# How to enable/disable Bluetooth at startup
sudo nano /etc/bluetooth/main.conf

## Find this section:

[Policy]

## and go down a bit to find this line:

AutoEnable=false

## If the line above has a # before it, it means the line is commented. Remove the hashtag. If there is a true instead of false, change it to false. Save the file now (Ctrl + s shortcut for nano).

## If you want to enable Bluetooth at startup again, change the line to this:

AutoEnable=true

# Libreoffice 👨‍💻️

sudo pacman -S libreoffice-still-pt-br jre-openjdk

yay -S libreoffice-extension-vero

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

#######################################
echo "Aplicativos Geo 👨‍💻️"
#######################################

sudo pacman -S qgis

yay -S grass

yay -S saga-gis --fm vim

#######################################
echo "Instalando Steam"
#######################################

sudo pacman -S steam

#######################################
echo "Motagem de Hd!"
#######################################

#sudo blkid

#echo 'UUID=0C24017B24016952 /mnt/Backup ntfs3 iocharset=utf8,uid=1000,gid=1000,umask=000,dmask=027,fmask=137 0 0' | tee -a /etc/fstab

#Mudar permissões: chmod -R 777 /mydirectory/...

#echo "Instalando VS Code!"

#yay -S visual-studio-code-bin

#######################################
echo "Instalando Zoteiro"
#######################################

yay -S zotero-bin

yay -S obsidian-appimage

#######################################
echo "Instalando Latex full e Markdown"
#######################################

sudo pacman -S neovim
sudo pacman -S pnpm
sudo pacman -S yarn
sudo pacman -S npm
sudo pacman -S cargo

yay -S asdf-vm
source /opt/asdf-vm/asdf.sh

bash <(curl -s https://raw.githubusercontent.com/lunarvim/lunarvim/master/utils/installer/install.sh)
#Inserir no.zshrc
# export PATH=~/.cargo/bin:~/.local/bin:$PATH

sudo pacman -S pandoc
sudo pacman -S texlive-most texlive-core texlive-bin

paru -S whatsapp-nativefier

# Vs Code
sudo pacman -S gnome-keyring libsecret libgnome-keyring

# Real-time Microphone Noise Cancellation on Linux
# https://medium.com/@gamunu/linux-noise-cancellation-b9f997f6764d

