<p align="center">
 
[//]: <> (site para ícones: https://shields.io/ )
 
<img alt="Maintained" src="https://img.shields.io/badge/Maintained%3F-Yes-green">
<img alt="GitHub last commit" src="https://img.shields.io/github/last-commit/yordisc/dotfiles">
<img alt="GitHub repo size" src="https://img.shields.io/github/repo-size/yordisc/dotfiles">
<img alt="GitHub commit activity (branch)" src="https://img.shields.io/github/commit-activity/y/yordisc/dotfiles">

<hr>

#  :floppy_disk: Dotfiles :place_of_worship:
This Dotfiles is made particularly to help me install things that I think can be done faster, I also hope it will be useful for whoever needs it.

My favorite distro is *Debian* so it's mostly meant to work well on Debian, it also has functionality on *Fedora* (since I use it too) and *Archlinux* (because I might use it again in the future) ).

## :zap: Dependencies :zap:

```bash
sudo apt install dialog git inxi -y
```

```bash
sudo dnf install dialog git inxi -y
```

```bash
sudo pacman -S dialog git inxi -y
```
### :pushpin: Install RPM Fusion Fedora
```bash
su -c 'dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm'
```
### :pushpin: Install Chaotic Aur (Opcional)
```bash
pacman-key --recv-key FBA220DFC880C036 --keyserver keyserver.ubuntu.com
pacman-key --lsign-key FBA220DFC880C036
pacman -U 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-keyring.pkg.tar.zst' 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-mirrorlist.pkg.tar.zst'
sudo pacman-key --init
sudo pacman -Syyu
sudo echo "[chaotic-aur]
Include = /etc/pacman.d/chaotic-mirrorlist" >> -a /etc/pacman.conf
sudo pacman -Syyu
```

## :sparkles: Installer :sparkles:

This is a Script that I wrote to facilitate the installation in the three right-handed ones that I use most frequently (Debian, Fedora and ArchLinux).
To use it, you just have to put this command line in the terminal.


```bash
cd ~/ && git clone https://github.com/yordisc/dotfiles && chmod 777 dotfiles/* -R && cd dotfiles/ && sudo bash dotfiles.sh
```
And follow the next steps:
1) Enter the name of the user to whom you want to install the programs.
2) The package you want to use according to the distribution is placed: Deb , Rpm , Aur.
3) Select what you want to install (there are three menus so if you are not going to install anything from one press ENTER and go to the next menu).

![dotfiles01](https://raw.githubusercontent.com/yordisc/dotfiles/master/dotfilesimages/dotfiles.sh01.png)
![dotfiles02](https://raw.githubusercontent.com/yordisc/dotfiles/master/dotfilesimages/dotfiles.sh02.png)
![dotfiles03](https://raw.githubusercontent.com/yordisc/dotfiles/master/dotfilesimages/dotfiles.sh03.png)
![dotfiles04](https://raw.githubusercontent.com/yordisc/dotfiles/master/dotfilesimages/dotfiles.sh04.png)
![dotfiles05](https://raw.githubusercontent.com/yordisc/dotfiles/master/dotfilesimages/dotfiles.sh05.png)
![dotfiles06](https://raw.githubusercontent.com/yordisc/dotfiles/master/dotfilesimages/dotfiles.sh06.png)

### :pushpin: Bspwm
The Bspwm installer is inside dotfiles.sh, just select it.

![bspwm01](https://raw.githubusercontent.com/yordisc/dotfiles/master/dotfilesimages/bspwm01.png)
![bspwm02](https://raw.githubusercontent.com/yordisc/dotfiles/master/dotfilesimages/bspwm02.png)
![bspwm03](https://raw.githubusercontent.com/yordisc/dotfiles/master/dotfilesimages/bspwm03.png)


<kbd>Ctrl</kbd> + <kbd>Super</kbd> + <kbd>h</kbd> - It will show the keybindings menu <br>
<kbd>Alt</kbd> + <kbd>Super</kbd> + <kbd>p</kbd> - Switch to polybar alternative <br>
<kbd>Alt</kbd> + <kbd>Super</kbd> + <kbd>Tab</kbd> - Change skin <br>

## :pencil2: Complete Nerdfons (Optional)
```bash
git clone https://github.com/ryanoasis/nerd-fonts
unzip nerd-fonts-master.zip
rm nerd-fonts-master.zip
cd nerd-fonts
sudo bash ./install.sh
```
## :computer: Automatically mount the disk at startup
```bash
sudo blkid
```
```bash
sudo mousepad /etc/fstab
```
## :dvd: Recommended distros
* [Spiral Linux XFCE](https://spirallinux.github.io/#download)
* [Fedora XFCE](https://spins.fedoraproject.org/xfce/download/index.html)
* [Manjaro XFCE](https://manjaro.org/download/)

## :loudspeaker: Pages of interest 
* [Montar particion automaticamente en linux](https://vivaelsoftwarelibre.com/montar-particiones-al-iniciar-linux-automaticamente/)
* [Servicios](https://www.hostinger.es/tutoriales/administrar-y-listar-servicios-en-linux)

## :100: Resources used / Credits 
* [Archcraft](https://github.com/archcraft-os)
* [Arcolinux](https://github.com/arcolinuxd)
* [Killer-OS](https://killer-os-oficial.github.io/wiki/wm/bspwm/)
* [Polybar Themes](https://github.com/adi1090x/polybar-themes)
* [NerdFonts](https://www.nerdfonts.com/cheat-sheet)
* [Gruvbox-Material](https://github.com/TheGreatMcPain/gruvbox-material-gtk)
* [Villanuevand](https://github.com/Villanuevand)
* [Alejandro Fermín](https://github.com/lostalejandro/)

## :venezuela: Social Media 
* [Stackoverflow](https://stackoverflow.com/users/19875787/yordisc)
* [Reddit](https://www.reddit.com/user/yordiscujar)
* [Linkedin](https://www.linkedin.com/in/yordiscujar/)
