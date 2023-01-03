<p align="center">
 
[//]: <> (site para ícones: https://shields.io/ )
 
<img alt="Maintained" src="https://img.shields.io/badge/Maintained%3F-Yes-green">
<img alt="GitHub last commit" src="https://img.shields.io/github/last-commit/yordisc/dotfiles.exe">
<img alt="GitHub repo size" src="https://img.shields.io/github/repo-size/yordisc/dotfiles.exe">
<img alt="GitHub commit activity (branch)" src="https://img.shields.io/github/commit-activity/y/yordisc/dotfiles.exe">
 
<hr>
 
#  :window: Dotfiles.exe (Windows OS) :place_of_worship:
In this repository you will find my personal Windows configuration when installing it on a computer and some tips, which may be useful to you.
 
![Desktop](https://raw.githubusercontent.com/yordisc/dotfiles.exe/master/Desktop.png)
 
## :wrench: System installation
I recommend the installation of a complete windows ISO (x64 since x86 does not meet what is currently demanded and would only be viable on a computer with very low requirements and even so a linux-based system would be preferable) and the use of LTS only in very particular moments where windows is required and it is known exactly what is going to be done, although the performance of a complete Windows is half as good as that of an LTS, since it does not have the complete system it can give failures.
* [Download Windows](https://www.microsoft.com/es-es/software-download/windows10ISO)
* [LTS](https://phoenixliteos.com/ULTRALITE) Si es que se es requrido.
* [Tools to Make Windows Unattended (LTS)](https://mega.nz/folder/uVBGRRxA#DYbopT3ICyUjswSXt1jA_A)
### :dvd: ISO to USB Installers
* [Rufus](https://rufus.ie/es/)
* [BalenaEtcher](https://www.balena.io/etcher/)
* [WoeUSB](https://github.com/WoeUSB/WoeUSB-ng) To put the ISO on a USB on a Linux System.
### Repair GRUB (if applicable) :hammer_and_wrench:
* [BootRepair](https://bootrepair.es/)
if the problem is in Fedora use these commands inside Fedora.
```bash
sudo grub2-mkconfig -o /etc/grub2.cfg
sudo grub2-mkconfig -o /etc/grub2-efi.cfg
```
## PowerShell Admin (Sudo)
```PS
start-process powershell -verb runas
```
## :zap: Dependencies :zap:
Before starting, the first thing is to have the system completely updated to avoid possible errors.
Installation of a PowerShell < "3.0" is required
To know your version you can use this command.
```PS
$psversiontable #version de powershell
```
### :pushpin: Activation :closed_lock_with_key:
* [Buy Windows]Comprar Windows](https://www.microsoft.com/es-es/windows/get-windows-10)
 
Activation by script (Administrator Mode):
```PS
cd
git clone https://github.com/prestonsn/windows-10-activation-script
cd \windows-10-activation-script\script
.\actvatr.bat
```
### :pushpin: Install PowerShell 7.3 from command line (administrator)
```cmd
msiexec.exe /package PowerShell-7.3.0-win-x64.msi /quiet ADD_EXPLORER_CONTEXT_MENU_OPENPOWERSHELL=1 ADD_FILE_CONTEXT_MENU_RUNPOWERSHELL=1 ENABLE_PSREMOTING=1 REGISTER_MANIFEST=1 USE_MU=1 ENABLE_MU=1 ADD_PATH=1
```
### :pushpin: Scoop
```PS
Set-ExecutionPolicy RemoteSigned -scope CurrentUser
Invoke-Expression (New-Object System.Net.WebClient).DownloadString('https://get.scoop.sh')
scoop install neofetch
```
### :pushpin: WinGet
* [Winget page](https://github.com/microsoft/winget-cli)
* [WinGet from the Microsoft Store](https://apps.microsoft.com/store/detail/app-installer/9NBLGGH4NNS1?hl=es-ad&gl=ad)
 
Installation command from PowerShell:
```PS
wget https://github.com/microsoft/winget-cli/releases/download/v1.3.2691/Microsoft.DesktopAppInstaller_8wekyb3d8bbwe.msixbundle -OutFile C:\Microsoft.DesktopAppInstaller_8wekyb3d8bbwe.msixbundle
Add-AppPackage -path “C:\Microsoft.DesktopAppInstaller_8wekyb3d8bbwe.msixbundle”
```

### :pushpin: Git :octocat:
* [Git page](https://git-scm.com/download/win)
* [GitHub Desktop](https://desktop.github.com/)
 
Installation using Winget:
```PS
winget install Git.Git
```
### :pushpin: Instalar Gpedit
It will always be necessary to have gpedit installed:
```PS
cd
git clone https://github.com/yordisc/dotfiles.exe
cd dotfiles.exe
.\gpedit-install.bat
```
### :pushpin: Fuentes
To install on Windows 7 and Windows 10, go to Control Panel > Fonts. In Windows 8.1, go to Control Panel > Appearance and Personalization > Fonts.
* [Nerd Fonts-Hack](https://github.com/ryanoasis/nerd-fonts/releases/download/v2.2.2/Hack.zip)
* [Nerd Fonts-Meslo](https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/Meslo.zip)

## Clean System :broom:
### Remove services and pre-installed (Basics)
```PS
cd
git clone https://github.com/yordisc/dotfiles.exe
cd dotfiles.exe
.\LimpiarWindows.bat
```
### Remove services
```PS
cd
git clone https://github.com/IgorGiraffa/Windows-10-tweaker
cd Windows-10-tweaker
.\tweaker.ps1
```
### Windows 10 Modifier
```PS
cd
git clone https://github.com/aikoncwd/win10script
cd win10script
.\aikoncwd-win10-script.vbs
```
## Installation of programs
Winget-UI installation:
```PS
winget install wingetui
```
Install the programs using Winget-GUI:
* [WinGet GUI](https://github.com/Romanitho/Winget-Install-GUI
)
```PS
cd
git clone https://github.com/Romanitho/Winget-Install-GUI
cd Winget-GUI/Sources
.\Winget-Install-GUI.ps1
```
And select the programs from:
```PS
cd dotfiles.exe/wingetinstallers
```
### Alternative programs
* [CPU-Z](https://www.cpuid.com/softwares/cpu-z.html)
* [FileZilla](https://filezilla-project.org/)
* [Format Factory](http://www.pcfreetime.com/formatfactory/index.php?language=es)
* [Office](https://www.intercambiosvirtuales.org/software/office-professional-plus-2019-v1811-build-11029-20079-multilenguaje-espanol)
* [PowerISO](https://www.intercambiosvirtuales.org/software/poweriso-v8-2-multilenguaje-espanol-cree-y-edite-archivos-iso-bin-cue-daa-y-mas)
* [WinRAR](https://www.intercambiosvirtuales.org/software/winrar-v6-00-final-espanol-poderoso-compresor-en-ficheros-rar-zip)
### Labor software installers (Azure, Cloud, etc) :briefcase:
```PS
cd
git clone https://github.com/actions/runner-images/tree/main/images/win/scripts/Installers
```
### Install Oh my posh
* [Oh my posh](https://ohmyposh.dev/docs) It's similar to "oh my zsh" but with some limitations.
Run this script as administrator:
```PS
cd
git clone https://github.com/yordisc/dotfiles.exe
.\powershell.bat
```
And finally move the "PowerShell" folder to "Documents".
## :loudspeaker: Repair windows
* [Repair Windows Image Offline](https://www.ubackup.com/es/windows-10/dism-offline-para-reparar-imagen.html)
* [Repair Windows Online Image](https://www.compuhoy.com/como-usar-la-herramienta-de-comando-dism-para-reparar-la-imagen-de-windows-10/)
* If the problem is in the hard drive, it is recommended to use [HDD Regenerator](https://www.mediafire.com/file/gamtcht4vwm1t2g/Herramientas+Reparacion+HDD.rar/file) and your password is: Tech
* If there is a problem with drivers, [Driver Booster](https://www.tecnotutoshd.net/2020/07/driver-booster-pro-7.6.html)is recommended. and you can download [Here](https://mega.nz/file/HywiFIqa#E4Q4-fmg7eIUL7YfUwRBhdKpm-FmAn52qPE6tbMjC2M) in mega.
  
## :100: Resources used / Credits
* [Files of Importance](https://mega.nz/folder/uMY20YQT#NXuvM7yBzPGCmHe9IbR4-w)
* [How to add sources](https://support.microsoft.com/es-es/office/agregar-una-fuente-b7c5f17c-4426-4b53-967f-455339c564c1)
* [Remove Windows Defender](https://www.alitajran.com/turn-off-windows-defender-in-windows-10-permanently/)
* [Automatic login](https://www.muycomputer.com/2019/03/11/iniciar-sesion-en-windows-10/)
* [Installing Linux on Windows with WSL](https://learn.microsoft.com/es-es/windows/wsl/install)
## :venezuela: Social Media 
* [Stackoverflow](https://stackoverflow.com/users/19875787/yordisc)
* [Reddit](https://www.reddit.com/user/yordiscujar)
* [Linkedin](https://www.linkedin.com/in/yordiscujar/)
