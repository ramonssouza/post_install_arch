
#######################################
echo "Instalando drivers predator!"
#######################################

sudo pacman -S linux-headers

sudo pacman -S rsync

git clone https://github.com/JafarAkhondali/acer-predator-turbo-and-rgb-keyboard-linux-module

cd "acer-predator-turbo-and-rgb-keyboard-linux-module"

sudo chmod +x ./*.sh

sudo ./install_service.sh

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

sudo sudo pacman -S xf86-input-wacom

xsetwacom set "Wacom Intuos S Pad pad" Button 1 key "lsuper"

xsetwacom set "Wacom Intuos S Pad pad" Button 2 key "lshift"

xsetwacom set "Wacom Intuos S Pad pad" Button 3 key "lctrl"

xsetwacom set "Wacom Intuos S Pad pad" Button 8 key "alt"

#######################################
echo "Suporte para extração e criação de arquivos compactados"
#######################################

sudo pacman -S cabextract lzip p7zip unrar



#######################################
echo "Instalando zathura-pdf!"
#######################################

sudo pacman -S zathura-pdf-mupdf

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
echo "Instalando timeshift"
#######################################

yay -S timeshift

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

#######################################
echo "Instalano cmake!"
#######################################

sudo pacman -S cmake

#######################################
echo "Instalano R!"
#######################################

sudo pacman -S r

yay -S rstudio-desktop-bin

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

yay -S saga-gis

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
echo "Instalando Latex full"
#######################################

sudo pacman -S texlive-most texlive-core texlive-bin

echo "FIM DA INSTALAÇÃO! 👏️"


