<p align="center">
 
[//]: <> (site para ícones: https://shields.io/ )
 
<img alt="Maintained" src="https://img.shields.io/badge/Maintained%3F-Yes-green">
<img alt="GitHub last commit" src="https://img.shields.io/github/last-commit/yordisc/dotfiles.exe">
<img alt="GitHub repo size" src="https://img.shields.io/github/repo-size/yordisc/dotfiles.exe">
<img alt="GitHub commit activity (branch)" src="https://img.shields.io/github/commit-activity/y/yordisc/dotfiles.exe">
 
<hr>
 
#  :floppy_disk: Dotfiles.exe (Windows OS) :place_of_worship:
En este repositorio se encuentra mi configuración personal de Windows a la hora de instalarlo en un ordenador y algunos consejos, al que le pueda servir que sea bienvenido.
 
 ![Desktop](https://raw.githubusercontent.com/yordisc/dotfiles.exe/master/Desktop.sh01.png)
 
## Instalación del sistema
Recomiendo la instalación de un ISO windows completa (x64 ya que x86 no cumple con lo que se demanda en la actualidad y solo seria viable en un ordenador de muy bajos requerimientos y aun asi seria preferible un sistema basado en linux) y el uso de LTS solo en momentos muy particulares en donde se requiera de windows y se sepa exactamente lo que se va a hacer, aunque el redimiento de un Windows completo sea la mitad de bueno que el de un LTS, este al no contar con el sistema completo puede dar fallas.
* [Descargar Windows](https://www.microsoft.com/es-es/software-download/windows10ISO)
* [LTS Recomendado](https://phoenixliteos.com/ULTRALITE) Si es que se es requrido.
* [Herramientas para hacer Windows Desatendido (LTS)](https://mega.nz/folder/uVBGRRxA#DYbopT3ICyUjswSXt1jA_A)
* [Archivos de Importancia](https://mega.nz/folder/uMY20YQT#NXuvM7yBzPGCmHe9IbR4-w)
### :dvd: Instaladores de ISO al USB
* [Rufus](https://rufus.ie/es/)
* [BalenaEtcher](https://www.balena.io/etcher/)
* [WoeUSB](https://github.com/WoeUSB/WoeUSB-ng) Para colocar el ISO en un USB en un Sistema Linux.
### Reparar GRUB (si se llega a dar el caso)
* [BootRepair](https://bootrepair.es/)
si el problema es en Fedora usar estos comandos dentro de Fedora.
```bash
sudo grub2-mkconfig -o /etc/grub2.cfg
sudo grub2-mkconfig -o /etc/grub2-efi.cfg
```
## PowerShell Admin (Sudo)
```PS
start-process powershell -verb runas
```
## :zap: Dependencies :zap:
Antes de iniciar lo primero es tener el sistema completamente actualizado para evitar posibles errores.
Se requiere de la instalación de un PowerShell < "3.0"
Para saber tu version puedes usar este comando.
```PS
$psversiontable #version de powershell
```
### Activación
* [Comprar Windows](https://www.microsoft.com/es-es/windows/get-windows-10)
 
 Activación por script (Modo Administrador):
```PS
cd
git clone https://github.com/prestonsn/windows-10-activation-script
cd \windows-10-activation-script\script
.\actvatr.bat
```
### Instalar PowerShell 7.3 desde linea de comandos (administrador)
```cmd
msiexec.exe /package PowerShell-7.3.0-win-x64.msi /quiet ADD_EXPLORER_CONTEXT_MENU_OPENPOWERSHELL=1 ADD_FILE_CONTEXT_MENU_RUNPOWERSHELL=1 ENABLE_PSREMOTING=1 REGISTER_MANIFEST=1 USE_MU=1 ENABLE_MU=1 ADD_PATH=1
```
### Scoop
```PS
Set-ExecutionPolicy RemoteSigned -scope CurrentUser
Invoke-Expression (New-Object System.Net.WebClient).DownloadString('https://get.scoop.sh')
scoop install neofetch
```
### WinGet
* [Pagina de WinGet](https://github.com/microsoft/winget-cli)
* [WinGet desde la Microsft Store](https://apps.microsoft.com/store/detail/app-installer/9NBLGGH4NNS1?hl=es-ad&gl=ad)
 
 Comando de instalación desde PowerShell:
```PS
wget https://github.com/microsoft/winget-cli/releases/download/v1.3.2691/Microsoft.DesktopAppInstaller_8wekyb3d8bbwe.msixbundle -OutFile C:\Microsoft.DesktopAppInstaller_8wekyb3d8bbwe.msixbundle
Add-AppPackage -path “C:\Microsoft.DesktopAppInstaller_8wekyb3d8bbwe.msixbundle”
```

### Git
* [Pagina de Git](https://git-scm.com/download/win)
* [GitHub Desktop](https://desktop.github.com/)
 
Instalación usando Winget:
```PS
winget install Git.Git
```
### Instalar Gpedit
Siempre sera necesario tener gpedit instalado:
```PS
cd
git clone https://github.com/yordisc/dotfiles.exe
cd dotfiles.exe
.\gpedit-install.bat
```
### Fuentes
Para instalar en Windows 7 y Windows 10, vaya a Panel de control > Fuentes. En Windows 8.1, vaya a Panel de control > Apariencia y personalización > Fuentes.
* [Nerd Fonts-Hack](https://github.com/ryanoasis/nerd-fonts/releases/download/v2.2.2/Hack.zip)
* [Nerd Fonts-Meslo](https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/Meslo.zip)

## Limpiar Sistema
### Eliminar servicios y preinstalados (basicos)
```PS
cd
git clone https://github.com/yordisc/dotfiles.exe
cd dotfiles.exe
.\LimpiarWindows.bat
```
### Eliminar servicios
```PS
cd
git clone https://github.com/IgorGiraffa/Windows-10-tweaker
cd Windows-10-tweaker
.\tweaker.ps1
```
### Modificador de Windows 10
```PS
cd
git clone https://github.com/aikoncwd/win10script
cd win10script
.\aikoncwd-win10-script.vbs
```
## Instalación de Programas
Instalación de Winget-UI:
```PS
winget install wingetui
```
Instala los programas usando Winget-GUI:
* [WinGet GUI](https://github.com/Romanitho/Winget-Install-GUI
)
```PS
cd
git clone https://github.com/Romanitho/Winget-Install-GUI
cd Winget-GUI/Sources
.\Winget-Install-GUI.ps1
```
Y selecciona los programas desde:
```PS
cd dotfiles.exe/wingetinstallers
```
### Programas alternativos
* [CPU-Z](https://www.cpuid.com/softwares/cpu-z.html)
* [Format Factory](http://www.pcfreetime.com/formatfactory/index.php?language=es)
* [Office](https://www.intercambiosvirtuales.org/software/office-professional-plus-2019-v1811-build-11029-20079-multilenguaje-espanol)
* [PowerISO](https://www.intercambiosvirtuales.org/software/poweriso-v8-2-multilenguaje-espanol-cree-y-edite-archivos-iso-bin-cue-daa-y-mas)
* [WinRAR](https://www.intercambiosvirtuales.org/software/winrar-v6-00-final-espanol-poderoso-compresor-en-ficheros-rar-zip)
### Instaladores de programas Laborales (Azure, Cloud, etc)
```PS
cd
git clone https://github.com/actions/runner-images/tree/main/images/win/scripts/Installers
```
### Instalar Oh my posh
* [Oh my posh](https://ohmyposh.dev/docs) es parecido a "oh my zsh" pero con algunas limitantes.
Ejecuta este script como administrador:
```PS
cd
git clone https://github.com/yordisc/dotfiles.exe
.\powershell.bat
```
Y por ultimo mueve la carpeta "PoweShell" a "Documents".
## :loudspeaker: Reparar Windows 
* [Reparar Imagen de Windows Offline](https://www.ubackup.com/es/windows-10/dism-offline-para-reparar-imagen.html)
* [Reparar Imagen de Windows Online](https://www.compuhoy.com/como-usar-la-herramienta-de-comando-dism-para-reparar-la-imagen-de-windows-10/)
* Si el problema es en el disco duro se recomienda el uso de [HDD Regenerator](https://www.mediafire.com/file/gamtcht4vwm1t2g/Herramientas+Reparacion+HDD.rar/file) y su Contraseña es: Tech
* Si hay problema con controladores se recomienda [Driver Booster](https://www.tecnotutoshd.net/2020/07/driver-booster-pro-7.6.html) y se puede descargar [Aqui](https://mega.nz/file/HywiFIqa#E4Q4-fmg7eIUL7YfUwRBhdKpm-FmAn52qPE6tbMjC2M) en mega.
  
## :100: Resources used / Credits 
* [Como agregar fuentes](https://support.microsoft.com/es-es/office/agregar-una-fuente-b7c5f17c-4426-4b53-967f-455339c564c1)
* [Eliminar Windows Defender](https://www.alitajran.com/turn-off-windows-defender-in-windows-10-permanently/)
* [Inicio de Sesión automatico](https://www.muycomputer.com/2019/03/11/iniciar-sesion-en-windows-10/)
* [Instalación de Linux en Windows con WSL](https://learn.microsoft.com/es-es/windows/wsl/install)
## :venezuela: Social Media 
* [Stackoverflow](https://stackoverflow.com/users/19875787/yordisc)
* [Reddit](https://www.reddit.com/user/yordiscujar)
* [Linkedin](https://www.linkedin.com/in/yordiscujar/)
