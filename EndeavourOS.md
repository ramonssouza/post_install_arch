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


