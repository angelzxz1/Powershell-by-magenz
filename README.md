# Powershell by Magenz
<p align="center">
  <img
    src="/terminal.png"
    alt="Terminal"
  />
</p>

## Terminal initial configuration
First let's install Terminal by Windows Store
<p align="center">
  <img
    src="/terminalStore.png"
    alt="terminalStore"
  />
</p>

Then let's add powershell core to the terminal, for that we need to install it, you can follow the steps in the <a href='https://docs.microsoft.com/en-us/powershell/scripting/install/installing-powershell-core-on-windows?view=powershell-7.1'>Microsoft documentation</a> or you can add it from the store
<p align="center">
  <img
    src="/powershellStore.png"
    alt="powershellStore"
  />
</p>

Then let's add some customitation to the settings.json file, you can find it in the by pressing <kbd>Crtl</kbd> + <kbd>,</kbd>, then at the bottom left corner click on the Open JSON file button.

Find `actions` and add this commands
```JSON
{
    "command":"nextTab",
    "keys":"alt+shift+n"
},
{
    "command":"prevTab",
    "keys":"alt+shift+p"
    
}
```
Then under `profiles` look for the `defaults` and add this code
```JSON
{
    "elevate": true,
    "font": 
    {
        "face": "Hack Nerd Font Mono" //Add this once you've added Oh My Posh
    },
    "opacity": 40,
    "useAcrylic": true,
    "colorScheme": "Magenz",
    "adjustIndistinguishableColors": true,
    "cursorShape": "vintage"
    
},
```
Then under `schemes` add this code
```JSON
{
    "background": "#022016",
    "black": "#0C0C0C",
    "blue": "#0037DA",
    "brightBlack": "#767676",
    "brightBlue": "#3B78FF",
    "brightCyan": "#ed953e",
    "brightGreen": "#0cc66f",
    "brightPurple": "#B4009E",
    "brightRed": "#f12536",
    "brightWhite": "#F2F2F2",
    "brightYellow": "#F9F1A5",
    "cursorColor": "#FFFFFF",
    "cyan": "#3A96DD",
    "foreground": "#d6fdf6",
    "green": "#13A10E",
    "name": "Magenz",
    "purple": "#881798",
    "red": "#C50F1F",
    "selectionBackground": "#2f0558",
    "white": "#ffffff",
    "yellow": "#C19C00"
}
```
## Initial powershell configuration

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
. $profileConfig\magenz.ps1 #The file where the user profile is located
. $profileConfig\functions.ps1 #The file where the functions are located
. $profileConfig\aliases.ps1 #The file where the aliases are located

#projectsPath 
#$result = Get-ChildItem
#$result
```
Then create the folder .config\powershell using the variable ```$env:USERPROFILE```


```powershell
mkdir $env:USERPROFILE\.config\powershell
```

and add the items, then you can uncomment the lines and add the path to the projects folder

## Terminal Icons and Oh My Posh

Follow the steps in the <a href='https://github.com/devblackops/Terminal-Icons'>Terminal Icons repository</a> to install the icons, and the steps in the <a href='https://ohmyposh.dev/docs/windows'>Oh My Posh</a> to install Oh My Posh, then download the <a href='https://github.com/angelzxz1/Oh-My-Posh-theme'>Oh My Posh theme by Magenz</a>


