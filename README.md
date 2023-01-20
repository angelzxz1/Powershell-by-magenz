# Powershell by Magenz
<p align="center">
  <img
    src="/terminal.png"
    alt="Terminal"
  />
</p>

## Initial configuration

First is to check where is  the profile file

```powershell
$profile
```

If the result is $null, then you need to create the profile file

```powershell
New-Item -Path $profile -ItemType File -Force
```

Then you need to edit the profile file using code or vim or notepad

```powershell
code $profile
```
or
```powershell
notepad $profile
```
or
```powershell
vim $profile
``` 
Then add the following lines

```powershell
Write-Output "Bienvenido XXXX" #A greeting message
$profileConfig = "$env:USERPROFILE\.config\powershell" #The path to the folder where the configuration files are located
. $profileConfig\user_profile.ps1 #The file where the user profile is located
. $profileConfig\functions.ps1 #The file where the functions are located
. $profileConfig\aliases.ps1 #The file where the aliases are located

#projectsPath 
#$result = Get-ChildItem
#$result
```
Then create the folder .config\powershell using the variable ```$env:USERPROFILE```


mkdir $env:USERPROFILE\.config\powershell and add the items, then you can uncomment the lines and add the path to the projects folder

## Terminal Icons

Follow the steps in the <a href='https://github.com/devblackops/Terminal-Icons'>Terminal Icons repository</a>

