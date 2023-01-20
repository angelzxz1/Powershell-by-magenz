Function helpme {
    vim $profileConfig\helpme.txt
}
Function profileEdit {
    vim $profileConfig\user_profile.ps1
}

Function aliasesEdit {
    vim $profileConfig\aliases.ps1
}
Function magenPath {
    Set-Location $profileConfig
}
Function projectsPath {
    Set-Location D:\Projects
}
Function vimconfig {
    Set-Location $env:USERPROFILE\AppData\Local\nvim
    vim .
}
Function myFunctions ($textEditor) {
    code $profileConfig\functions.ps1
}

function vimShortcuts {
    Write-Output "This is a list of vim shortcuts.
    Keep in mind that by leader is the spacebar
    and for practicity well use Ld for leader
    --Most Common for usage
    Ld+g+s: shows git status
    Ctrl+e: shows harpoon
"
}

function gitAdd([string[]]$files, [string]$message) {
    git add $files
    git commit -m $message
    git push
}