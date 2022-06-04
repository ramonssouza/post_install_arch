
# Uncomment the “multilib” section.

# https://www-reddit-com.translate.goog/r/archlinux/comments/p0e6qp/separate_home_partition_on_btrfs/?_x_tr_sl=auto&_x_tr_tl=pt&_x_tr_hl=pt-BR
# https://www.youtube.com/watch?v=dohxv1ULcL4&t=1751s
# https://gitlab.com/eflinux/arch-basic.git
# https://www.youtube.com/watch?v=BgesUogmHec

nano /etc/pacman.conf

echo "Hablitar extensões no Gnome 👨‍💻️"
git clone https://aur.archlinux.org/chrome-gnome-shell.git
cd chrome-gnome-shell
makepkg -si

echo "Traduzir Libreoffice 👨‍💻️"
pacman -S libreoffice-still-pt-br jre-openjdk

paru -S libreoffice-extension-languagetool
paru -S libreoffice-extension-vero


echo "Instalar Thunderbird 👨‍💻️"
pacman -S thunderbird

echo "Ferramentas e utilitários 👨‍💻️"

# https://www.youtube.com/watch?v=i5TSqHurvh4
systemctl start bluetooth.service
systemctl enable bluetooth.service
cd .cache
chmod -R 777 obexd

echo "Mapeamento da mesa digitalizadora Wacom Intuos S Pad pad"

pacman -S xf86-input-wacom

xsetwacom set "Wacom Intuos S Pad pad" Button 1 key "lsuper"
xsetwacom set "Wacom Intuos S Pad pad" Button 2 key "lshift"
xsetwacom set "Wacom Intuos S Pad pad" Button 3 key "lctrl"
xsetwacom set "Wacom Intuos S Pad pad" Button 8 key "alt"

echo "Suporte para extração e criação de arquivos compactados"
pacman -S cabextract lzip p7zip unrar

echo "Instalando o Xournall"
pacman -S xournalpp

echo "Instalando o Master PDF Editor!"
paru -S masterpdfeditor-free 


echo "Instalando o qBittorrent!"
pacman -S qbittorrent

echo "Instalando o GParted!"
pacman -S gparted

echo "Instalando o Htop!"
pacman -S htop

echo "Instalando o Vim!"
pacman -S vim
export EDITOR=vim

echo "Instalando timeshift"
paru -S timeshift

echo "Instalando bitwarden 👨‍💻️"
pacman -S bitwarden

echo "Configuração de Áudio e vídeo 👨‍💻️"

echo "Instalação dos codecs multimídia"

pacman -S ffmpeg gst-plugins-ugly gst-plugins-good gst-plugins-base gst-plugins-bad gst-libav gstreamer

echo "Instalando o OBS 👨‍💻️"
pacman -S obs-studio

echo "Produção/edição de áudio, imagem e vídeo 👨‍💻️"

echo "Insalação do Audacity"
pacman -S audacity

echo "Instalação do Gimp"
pacman -S gimp

echo "Instalação do Davinci-resolve"
paru -S davinci-resolve

#echo "Aplicativos para comunicação 👨‍💻️"
# echo "Navegadores da Internet"
# dnf -y install google-chrome-stable 

echo "Configuração das Ferramentas para desenvolvedores 👨‍💻️"

echo "Instalano cmake!"
pacman -S cmake

echo "Instalano R!"
pacman -S r
paru -S rstudio-desktop
#https://wiki.archlinux.org/title/R

echo "Aplicativos Geo 👨‍💻️"
pacman -S qgis
paru -S grass
paru -S saga-gis

echo "Instalando Steam"

pacman -S steam


echo "Montar NTFS"
mkdir /mnt/Backup
#blkid
echo 'UUID=0C24017B24016952 /mnt/Backup ntfs3 iocharset=utf8,uid=1000,gid=1000,umask=000,dmask=027,fmask=137 0 0' | tee -a /etc/fstab
#Mudar permissões: chmod -R 777 /mydirectory/...

echo "Instalando VS Code!"

paru -S visual-studio-code-bin

echo "Instalando Zoteiro"

paru -S zotero-bin

paru -S obsidian-appimage

paru -S whatsapp-nativefier 

nativefier --name 'Kindle' 'https://read.amazon.com/kindle-library'

nativefier -p linux -a x64 https://read.amazon.com --tray

nativefier --name "Kindle" --icon "https://logos.fandom.com/wiki/Amazon_Kindle?file=Amazon_Kindle_icon_2017.png" --full-screen "https://read.amazon.com"

/home/$USER/.local/share/applications

pacman -S flatpak
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
# pacman -S gnome-software-packagekit-plugin gnome-software-plugin-flatpak

flatpak install flathub org.jamovi.jamovi ch.openboard.OpenBoard

for i in org.jamovi.jamovi ch.openboard.OpenBoard; do
  flatpak override --filesystem=host $i
done

echo "Instalando Latex full"
pacman -S texlive-most texlive-core texlive-bin


git clone https://github.com/JafarAkhondali/acer-predator-turbo-and-rgb-keyboard-linux-module
cd "acer-predator-turbo-and-rgb-keyboard-linux-module"
sudo chmod +x ./*.sh
sudo pacman -S rsync

sudo ./install_service.sh
sudo cp ./facer_rgb.py /usr/local/bin

# https://www.howtogeek.com/687970/how-to-run-a-linux-program-at-startup-with-systemd/


sudo echo "facer_rgb.py -m 3 -s 5 -b 100" | sudo tee -a /usr/local/bin/rgb-keyboard-start.sh > /dev/null

sudo chmod +x /usr/local/bin/rgb-keyboard-start.sh

sudo echo -e "[Unit]\nDescription=Start rgb my keyboard\nWants=network.target\nAfter=syslog.target network-online.target\n[Service]\nType=simple\nExecStart=/usr/local/bin/rgb-keyboard-start.sh\nRestart=on-failure\nRestartSec=10\nKillMode=process\n[Install]\nWantedBy=multi-user.target" | sudo tee -a /etc/systemd/system/rgb-keyboard-start.service > /dev/null

sudo chmod 640 /etc/systemd/system/rgb-keyboard-start.service 
sudo systemctl daemon-reload	
sudo systemctl enable rgb-keyboard-start.service
sudo systemctl status rgb-keyboard-start.service

# Organizar o Grid do Gnome Shell em pastas

gsettings set org.gnome.desktop.app-folders folder-children "['accessories', 'chrome-apps', 'games', 'graphics', 'internet', 'office', 'programming', 'science', 'sound---video', 'system-tools', 'universal-access', 'wine', 'education']"

gsettings set org.gnome.desktop.app-folders.folder:/org/gnome/desktop/app-folders/folders/accessories/ name "Accessories" ; gsettings set org.gnome.desktop.app-folders.folder:/org/gnome/desktop/app-folders/folders/accessories/ categories "['Utility']"

gsettings set org.gnome.desktop.app-folders.folder:/org/gnome/desktop/app-folders/folders/games/ name "Games" ; gsettings set org.gnome.desktop.app-folders.folder:/org/gnome/desktop/app-folders/folders/games/ categories "['Game']"

gsettings set org.gnome.desktop.app-folders.folder:/org/gnome/desktop/app-folders/folders/graphics/ name "Graphics" ; gsettings set org.gnome.desktop.app-folders.folder:/org/gnome/desktop/app-folders/folders/graphics/ categories "['Graphics']"

gsettings set org.gnome.desktop.app-folders.folder:/org/gnome/desktop/app-folders/folders/internet/ name "Internet" ; gsettings set org.gnome.desktop.app-folders.folder:/org/gnome/desktop/app-folders/folders/internet/ categories "['Network', 'WebBrowser', 'Email']"

gsettings set org.gnome.desktop.app-folders.folder:/org/gnome/desktop/app-folders/folders/office/ name "Office" ; gsettings set org.gnome.desktop.app-folders.folder:/org/gnome/desktop/app-folders/folders/office/ categories "['Office']"

gsettings set org.gnome.desktop.app-folders.folder:/org/gnome/desktop/app-folders/folders/programming/ name "Programming" ; gsettings set org.gnome.desktop.app-folders.folder:/org/gnome/desktop/app-folders/folders/programming/ categories "['Development']"

gsettings set org.gnome.desktop.app-folders.folder:/org/gnome/desktop/app-folders/folders/science/ name "Science" ; gsettings set org.gnome.desktop.app-folders.folder:/org/gnome/desktop/app-folders/folders/science/ categories "['Science']"

gsettings set org.gnome.desktop.app-folders.folder:/org/gnome/desktop/app-folders/folders/sound---video/ name "Sound & Video" ; gsettings set org.gnome.desktop.app-folders.folder:/org/gnome/desktop/app-folders/folders/sound---video/ categories "['AudioVideo', 'Audio', 'Video']"

gsettings set org.gnome.desktop.app-folders.folder:/org/gnome/desktop/app-folders/folders/system-tools/ name "System Tools" ; gsettings set org.gnome.desktop.app-folders.folder:/org/gnome/desktop/app-folders/folders/system-tools/ categories "['System', 'Settings']"

gsettings set org.gnome.desktop.app-folders.folder:/org/gnome/desktop/app-folders/folders/universal-access/ name "Universal Access" ; gsettings set org.gnome.desktop.app-folders.folder:/org/gnome/desktop/app-folders/folders/universal-access/ categories "['Accessibility']"
 
gsettings set org.gnome.desktop.app-folders.folder:/org/gnome/desktop/app-folders/folders/wine/ name "Wine" ; gsettings set org.gnome.desktop.app-folders.folder:/org/gnome/desktop/app-folders/folders/wine/ categories "['Wine', 'X-Wine', 'Wine-Programs-Accessories']"
 
gsettings set org.gnome.desktop.app-folders.folder:/org/gnome/desktop/app-folders/folders/education/ name "Education" ; gsettings set org.gnome.desktop.app-folders.folder:/org/gnome/desktop/app-folders/folders/education/ categories "['Education']"

# Desfazer as alterações
# Mas se por algum motivo você não gostou da alteração, de o comando abaixo para voltar ao padrão do sistema.
# gsettings reset org.gnome.desktop.app-folders folder-children 

# Para organizar os ícones em ordem alfabética execute o comando abaixo no terminal.
# gsettings reset org.gnome.shell app-picker-layout 

echo -n "ramonssouza93@gmail.com" | sha256sum | cut -d ' ' -f1

generator-sha256.sh



echo "FIM DA INSTALAÇÃO! 👏️"


