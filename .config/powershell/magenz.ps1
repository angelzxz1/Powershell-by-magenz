#Initial configuration-----------------------------
oh-my-posh init pwsh --config "$env:USERPROFILE\.config\Oh-My-Posh-theme\magen.omp.json" | Invoke-Expression
Import-Module -Name Terminal-Icons
set-PSReadLineOption -PredictionViewStyle ListView