# Oh My Posh
oh-my-posh init pwsh | Invoke-Expression
oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH/robbyrussell.omp.json" | Invoke-Expression

# fnm
fnm env --use-on-cd --shell powershell | Out-String | Invoke-Expression

# Aliases
Set-Alias -Name c -Value Clear-Host