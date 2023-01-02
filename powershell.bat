### Ejecutar en modo administrador
# Oh my Posh
## https://www.luisllamas.es/oh-my-post/
## https://ohmyposh.dev/docs/installation/windows
## https://learn.microsoft.com/es-es/windows/terminal/tutorials/custom-prompt-setup
winget install JanDeDobbeleer.OhMyPosh -s winget
Install-Module oh-my-posh -Scope AllUsers
oh-my-posh init pwsh | Invoke-Expression
Install-PackageProvider -Name NuGet -Force
Install-Module posh-git -Scope CurrentUser
Install-Module -Name PSReadLine -AllowPrerelease -Scope CurrentUser -Force -SkipPublisherCheck
Install-Module -Name oh-my-posh, posh-git, Terminal-Icons, Az.Tools.predictor, PSReadLine -Force -Scope CurrentUser