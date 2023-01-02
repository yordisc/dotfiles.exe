oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\gruvbox.omp.json" | Invoke-Expression
###oh-my-posh init pwsh --config 'https://raw.githubusercontent.com/JanDeDobbeleer/oh-my-posh/main/themes/material.omp.json' | Invoke-Expression
# Import PowerShell Readline
Import-Module posh-git
Import-Module Terminal-Icons
Import-Module PSReadline -MinimumVersion 2.2.2
#Import-Module Az.Tools.Predictor
# Enable Intellisense Prediction and setting the source
Set-PSReadLineOption -PredictionSource HistoryAndPlugin
# Navigation
Set-PSReadLineKeyHandler -Key UpArrow -Function HistorySearchBackward
Set-PSReadLineKeyHandler -Key DownArrow -Function HistorySearchForward
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -PredictionViewStyle ListView
Set-PSReadLineOption -EditMode Windows
# Bash completion
Set-PSReadLineKeyHandler -Key Tab -Function Complete
Enable-PoshTooltips
Clear-Host

