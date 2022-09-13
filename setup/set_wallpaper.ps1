Function Set-WallPaper
{

$uri = 'http://pxeboot01.wwtpoc.local/User/phil/WWT%20Lab%20Wallpaper%20-%20Dark.jpg'
wget -Uri $uri -OutFile "c:\users\Public\Pictures\BG.jpg" -Verbose


Set-ItemProperty -path 'HKCU:\Control Panel\Desktop\' -name Wallpaper -value "c:\users\Public\Pictures\BG.jpg"
Set-ItemProperty -path 'HKCU:\Control Panel\Desktop\' -name TileWallpaper -value "0"
Set-ItemProperty -path 'HKCU:\Control Panel\Desktop\' -name WallpaperStyle -value "10" -Force

# Set the lockscreen background
$lockRegKey = 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Personalization'
# create the key if it doesn't already exist
if (!(Test-Path -Path $lockRegKey)) {
   $null = New-Item -Path $lockRegKey
}
Set-ItemProperty -Path $lockRegKey -Name LockScreenImage -value "c:\users\Public\Pictures\BG.jpg"
# End lock screen set

}

Set-WallPaper