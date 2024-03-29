﻿
$path = "C:\Na\Installation"
If(!(test-path -PathType container $path))
{
      New-Item -ItemType Directory -Path $path
}
# Path for the workdir
$workdir = "c:\na\installation\"
set-location C:\NA\Installation
Clear-Host
# Downloading Stuff ....10%.... /S
write-host Downloading Teamviewer
$source = "https://download.teamviewer.com/full"
$destination = "$workdir\TV.exe"
Invoke-WebRequest $source -OutFile $destination
.\TV.exe /S
start-sleep -seconds 5
Clear-Host
# Downloading Stuff ....20%.... /silent
Write-Host Downloading Zoom
$source = "https://zoom.us/client/5.12.6.10137/ZoomInstallerFull.exe?archType=x64"
$destination = "$workdir\Zoom.exe"
Invoke-WebRequest $source -OutFile $destination
.\Zoom.exe /silent
start-sleep -seconds 5
Clear-Host
# Downloading Stuff ....30%....
Write-Host Downloading
$source = "https://files3.codecguide.com/K-Lite_Codec_Pack_1725_Basic.exe"
$destination = "$workdir\Klite.exe"
Invoke-WebRequest $source -OutFile $destination
Clear-Host
# Downloading Stuff ....40%.... /quiet
Write-Host Downloading JDK
$source = "https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u352-b08/OpenJDK8U-jdk_x64_windows_hotspot_8u352b08.msi"
$destination = "$workdir\Openjdk8.msi"
Invoke-WebRequest $source -OutFile $destination
.\openjdk8.msi /passive
start-sleep -seconds 15
Clear-Host
# Downloading Stuff ....50%.... /quiet
Write-Host Downloading JDK
$source = "https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.17%2B8/OpenJDK11U-jdk_x64_windows_hotspot_11.0.17_8.msi"
$destination = "$workdir\Openjdk11.msi"
Invoke-WebRequest $source -OutFile $destination
.\openjdk11.msi /passive
start-sleep -seconds 15
Clear-Host
# Downloading Stuff ....60%....
Write-Host Downloading Chrome
$source = "https://dl.google.com/tag/s/appguid%3D%7B8A69D345-D564-463C-AFF1-A69D9E530F96%7D%26iid%3D%7B5BDB0487-C973-62F8-C2C9-4D5281D83E08%7D%26lang%3Den%26browser%3D3%26usagestats%3D0%26appname%3DGoogle%2520Chrome%26needsadmin%3Dprefers%26ap%3Dx64-stable-statsdef_1%26installdataindex%3Dempty/chrome/install/ChromeStandaloneSetup64.exe"
$destination = "$workdir\Chrome.exe"
Invoke-WebRequest $source -OutFile $destination
.\chrome.exe /install|taskkill /f /im chrome.exe
start-sleep -seconds 5
Clear-Host
# Downloading Stuff ....70%....
Write-Host Downloading TS Print
$source = "https://www.terminalworks.com/downloads/tsprint/TSPrint_client.exe"
$destination = "$workdir\TSprint.exe"
Invoke-WebRequest $source -OutFile $destination
.\tsprint.exe /silent
start-sleep -seconds 5
Clear-Host
# Downloading Stuff ....80%....
Write-Host Downloading NetTime
$source = "https://www.timesynctool.com/NetTimeSetup-314.exe"
$destination = "$workdir\Nettime.exe"
Invoke-WebRequest $source -OutFile $destination
.\nettime.exe /silent
Clear-Host
# Downloading Stuff ....90%....
Write-Host Downloading ESET
# Path for the workdir
$workdir = "c:\na\installation\"
$source = "https://download.eset.com/com/eset/apps/business/ees/windows/latest/ees_nt64.msi"
$destination = "$workdir\ESET.msi"
Invoke-WebRequest $source -OutFile $destination
.\eset.msi /passive
start-sleep -seconds 5
Clear-Host
# Downloading Stuff ....95%....
Write-Host Downloading Adobe PDF Reader
Invoke-WebRequest $source -OutFile $destination
$source = "http://ardownload.adobe.com/pub/adobe/reader/win/AcrobatDC/1502320053/AcroRdrDC1502320053_en_US.exe"
$destination = "$workdir\PDF.exe"
Invoke-WebRequest $source -OutFile $destination
Clear-Host
