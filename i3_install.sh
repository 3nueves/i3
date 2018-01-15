#!/bin/bash

# date: 30/10/2016
# Autor: David Moya
# Action: Instalación y configuración de i3 para ubuntu 16.10

# Instalación Wine
sudo apt install -y wine-stable

# Install python + anaconda + jupyter
mkdir -p ~/Download/python/ && cd ~/Download/python && wget https://repo.continuum.io/archive/Anaconda3-5.0.1-Linux-x86_64.sh
bash Anaconda3-5.0.1-Linux-x86_64.sh

# Instalamos terminales
sudo apt install -y sakura && sudo apt install terminator

# Instalamos i3
sudo apt update && sudo apt upgrade && sudo apt install i3

# Instalación del paqueta playerctl
mkdir -p /tmp/install_i3
cd /tmp/install_i3
wget https://github.com/acrisci/playerctl/releases/download/v0.5.0/playerctl-0.5.0_amd64.deb
sudo dpkg -i playerctl-0.5.0_amd64.deb

# Instalción de feh para fondo de escritorio
sudo apt install feh

# Instalación de para editar la configuración de las pantallas, recuerda que quiza haya que cambiar la linea donde está arandr, por la resolución 
sudo apt install arandr

# Utilizaremos xprop para saber el nombre de la clase, utilizamos el segundo valor, de las aplicaciones y poderlas asignar a los workspaces mediante:
# assign [class="Firefox"] $workspace1

# Instalamos las fuentes para los iconos de la barra Font-Awesome
cd /tmp/install_i3
rm -rf /tmp/install_i3/*
wget https://github.com/FortAwesome/Font-Awesome/archive/v4.7.0.zip
unzip *.zip
cd Font-Awesome-4.7.0/fonts
mkdir ~/.fonts
mv *.ttf ~/.fonts

# Instalación de fuentes, en este caso YosemiteSanFranciscoFont => https://github.com/supermarin/YosemiteSanFranciscoFont
cd /tmp/install_i3
wget https://github.com/supermarin/YosemiteSanFranciscoFont/archive/master.zip
cd YosemiteSanFranciscoFont-master
mv *.ttf ~/.fonts

# Instalación de lxappearance para cambiar temas, iconos, fuentes, etc...
sudo apt install lxappearance

# Instalación del tema para firefox, el tema es Arc-darker-firefox-themes. => https://github.com/horst3180/arc-firefox-theme/releases

# Instalación de gestor de carpetas thunar.
sudo apt install thunar

# Instalación del tema Arc-theme. => http://software.opensuse.org/download.html?project=home%3AHorst3180&package=arc-theme
cd /tmp/install_i3
wget http://download.opensuse.org/repositories/home:Horst3180/xUbuntu_16.04/Release.key
sudo apt-key add - < Release.key
sudo apt-get update
sudo sh -c "echo 'deb http://download.opensuse.org/repositories/home:/Horst3180/xUbuntu_16.04/ /' > /etc/apt/sources.list.d/arc-theme.list"
sudo apt-get update
sudo apt-get install arc-theme

# Instalación de themes 'adapta' 
sudo add-apt-repository ppa:tista/adapta
sudo apt update
sudo apt install adapta-gtk-theme

# Volvemos a ejecutar lxappearance y elegimos los temas Arc-Darker

# Instalación de los iconos estilo Moka
sudo add-apt-repository ppa:moka/stable
sudo apt update && apt install moka-icon-theme
sudo apt install moka-icon-theme

# Instalación del menú rofi
sudo apt install rofi

# Instalación de temas rofi, como ejemplo coloco el proceso de instalación de un tema
mkdir -p ~/.Xresources.d/rofi/themes/
echo '#include "/home/your-user/.Xresources.d/rofi/themes/rofi-themes/gruvbox-dark.theme"' >> ~/.Xresources
xrdb -merge ~/.Xresources


# Instalación de la función opacity o transacciones para i3, compton con la opción -f activamos las transiciones
sudo apt install compton


