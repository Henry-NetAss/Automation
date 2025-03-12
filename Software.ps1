
$path = "C:\Na\Installation"
If(!(test-path -PathType container $path))
{
      New-Item -ItemType Directory -Path $path
}
echo y | powershell install-module -name POSHNOTIFY -Scope CurrentUser -Force
$workdir = "c:\na\installation\"
set-location C:\NA\Installation
Clear-Host
send-osnotification -body 'AnyDesk' -Title 'Network Associates'
echo y|winget install --name AnyDesk --silent
send-osnotification -body 'Downloading TeamViewer' -Title 'Network Associates'
echo y|winget install --id TeamViewer.TeamViewer --silent
start-sleep -seconds 5
.\anydesksilent.ps1
Clear-Host
send-osnotification -body 'Downloading Zoom' -Title 'Network Associates'
$source = "https://zoom.us/client/5.12.6.10137/ZoomInstallerFull.exe?archType=x64"
$destination = "$workdir\Zoom.exe"
Invoke-WebRequest $source -OutFile $destination
send-osnotification -body 'Installing Zoom' -Title 'Network Associates'
.\Zoom.exe /silent
start-sleep -seconds 5
Clear-Host
$source = "https://files3.codecguide.com/K-Lite_Codec_Pack_1725_Basic.exe"
$destination = "$workdir\Klite.exe"
Invoke-WebRequest $source -OutFile $destination
Clear-Host
send-osnotification -body 'Downloading JDK8' -Title 'Network Associates'
echo y|winget install --id EclipseAdoptium.Temurin.8.JDK --silent
start-sleep -seconds 15
Clear-Host
send-osnotification -body 'Downloading JDK11' -Title 'Network Associates'
echo y|winget install --id EclipseAdoptium.Temurin.11.JDK --silent
start-sleep -seconds 15
Clear-Host
send-osnotification -body 'Downloading Google Chrome' -Title 'Network Associates'
echo y|winget install --id Google.Chrome.EXE --silent
start-sleep -seconds 5
Clear-Host
send-osnotification -body 'Downloading TS Print' -Title 'Network Associates'
$source = "https://www.terminalworks.com/downloads/tsprint/TSPrint_client.exe"
$destination = "$workdir\TSprint.exe"
Invoke-WebRequest $source -OutFile $destination
send-osnotification -body 'Installing TS Print' -Title 'Network Associates'
.\tsprint.exe /silent
start-sleep -seconds 5
Clear-Host
send-osnotification -body 'Downloading NetTime' -Title 'Network Associates'
echo y|winget install --name NetTime --silent
Clear-Host
send-osnotification -body 'Downloading ESET Endpoint Security' -Title 'Network Associates'
echo y|winget install --id ESET.EndpointSecurity --silent
start-sleep -seconds 5
Clear-Host
send-osnotification -body 'Downloading Adobe' -Title 'Network Associates'
echo y|winget install --id Adobe.Acrobat.Reader.32-bit --silent
send-osnotification -body 'Whatsapp' -Title 'Network Associates'
#Install whatsapp
echo y|winget install --id 9NKSQGP7F2NH --silent
send-osnotification -body 'Microsoft Office' -Title 'Network Associates'
echo y|winget install --id Microsoft.Office --silent
Clear-Host
