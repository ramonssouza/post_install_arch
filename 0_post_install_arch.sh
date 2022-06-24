# Enable parallel downloading in Pacman in Arch Linux
sudo vim /etc/pacman.conf

# Find the following line and uncomment it:
ParallelDownloads = 5

sudo pacman -S --needed base-devel
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si

# sudo pacman-mirrors -f 5

echo "Hablitar extensões no Gnome 👨‍💻️"
git clone https://aur.archlinux.org/chrome-gnome-shell.git
cd chrome-gnome-shell
makepkg -si

# https://github.com/Askannz/optimus-manager
# https://www.youtube.com/watch?v=RZdWVntmvI8

sudo pacman -S nvidia-inst
nvidia-inst -p

yay -S envycontrol
sudo pacman -S gnome-backgrounds

yay -S wonderwall

# gnome shell extension for switching GPU profiles on Nvidia Optimus systems
# GPU profile selector

systemctl start bluetooth.service
systemctl enable bluetooth.service

#######################################
echo "Instalando drivers predator!"
#######################################

sudo pacman -S linux-headers

sudo pacman -S rsync

git clone https://github.com/JafarAkhondali/acer-predator-turbo-and-rgb-keyboard-linux-module

cd "acer-predator-turbo-and-rgb-keyboard-linux-module"

sudo chmod +x ./*.sh

sudo ./install_service.sh

sudo cp  ./facer_rgb.py  /usr/bin/

echo 'facer_rgb.py -m 2 -s 3 -b 100' | tee -a ~/.config/plasma-workspace/env/facer_rgb_run.sh

# KDE: Settings > Startup and Shutdown > Autostart And you hit the + Add… 

#######################################
echo "Instalar Arandr 👨‍💻️"
#######################################

sudo pacman -S arandr

#######################################
echo "Instalar Libreoffice 👨‍💻️"
#######################################

sudo pacman -S libreoffice-still-pt-br jre-openjdk

yay -S libreoffice-extension-languagetool

yay -S libreoffice-extension-vero

#######################################
echo "Instalar Thunderbird 👨‍💻️"
#######################################

sudo pacman -S thunderbird

#######################################
echo "Mapeamento da mesa digitalizadora Wacom Intuos S Pad pad"
#######################################

sudo pacman -S kcm-wacomtablet

#sudo pacman -S xf86-input-wacom

#xsetwacom set "Wacom Intuos S Pad pad" Button 1 key "lsuper"

#xsetwacom set "Wacom Intuos S Pad pad" Button 2 key "lshift"

#xsetwacom set "Wacom Intuos S Pad pad" Button 3 key "lctrl"

#xsetwacom set "Wacom Intuos S Pad pad" Button 8 key "alt"

#######################################
echo "Suporte para extração e criação de arquivos compactados"
#######################################

sudo pacman -S cabextract lzip p7zip unrar

#######################################
echo "Instalando zathura-pdf!"
#######################################

sudo pacman -S zathura-pdf-mupdf

#######################################
echo "Instalando Calibre!"
#######################################

sudo pacman -S calibre

#######################################
echo "Instalando Poppler!"
#######################################

sudo pacman -S poppler

#######################################
echo "Instalando ZSH!"
#######################################

sudo pacman -S zsh

zsh

zsh /usr/share/zsh/functions/Newuser/zsh-newuser-install -f

sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

git clone https://github.com/agkozak/zsh-z $ZSH_CUSTOM/plugins/zsh-z

git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf

~/.fzf/install

export FZF_DEFAULT_COMMAND='fdfind --type f'
export FZF_DEFAULT_OPTS="--layout=reverse --inline-info --height=80%"

#######################################
echo "Instalando o Xournall"
#######################################

sudo pacman -S xournalpp

#######################################
echo "Instalando o Htop!"
#######################################

sudo pacman -S htop

#######################################
echo "Instalando o Vim!"
#######################################

sudo pacman -S vim neovim
sudo pacman -S xclip
yay -S neovim-symlinks

#######################################
echo "Instalando timeshift!"
#######################################

yay -S timeshift

#######################################
echo "Instalando rclone!"
#######################################

sudo pacman -S rclone

#######################################
echo "Instalando bitwarden 👨‍💻️"
#######################################

sudo pacman -S bitwarden

#######################################
echo "Instalação dos codecs multimídia"
#######################################

sudo pacman -S ffmpeg gst-plugins-ugly gst-plugins-good gst-plugins-base gst-slugins-bad gst-libav gstreamer

#######################################
echo "Instalando o OBS 👨‍💻️"
#######################################

sudo pacman -S obs-studio

#######################################
echo "Insalação do Audacity"
#######################################

sudo pacman -S audacity

#######################################
echo "Instalação do Gimp"
#######################################

sudo pacman -S gimp

#######################################
echo "Instalação do Davinci-resolve"
#######################################

yay -S davinci-resolve

#######################################
echo "Navegadores da Internet"
#######################################

# dnf -y install firefox 

# Manjaro
sudo pacman -S brave-browser

#######################################
echo "Instalano cmake!"
#######################################

sudo pacman -S cmake

#######################################
echo "Instalano R!"
#######################################

sudo pacman -S r

yay -S rstudio-desktop-bin

python3 python-virtualenv python-pip 

# https://wiki.archlinux.org/title/R

#######################################
echo "Instalando o jamovi!"
#######################################

yay -S r-jmvcore

#######################################
echo "Instalando o openboard!"
#######################################

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

paru -S youtubedl-gui

sudo pamac install libinput-gestures                                                                                                                                                                                         ✔ 

sudo pamac install xdotool 

sudo pamac install gestures 

sudo gpasswd -a $USER input

# reboot

libinput-gestures-setup start  
 
libinput-gestures-setup autostart  
echo "FIM DA INSTALAÇÃO! 👏️"


