cd c:\NA\Installation
powercfg -change -monitor-timeout-ac 0
powercfg -change -standby-timeout-ac 0
powercfg -change -hibernate-timeout-ac 0
powershell -command "& {Set-ExecutionPolicy -ExecutionPolicy Unrestricted -Force}"
powershell.exe -WindowStyle Hidden c:\na\installation\website.ps1
powershell.exe -WindowStyle Hidden c:\na\installation\winget_enable.ps1
powershell.exe -WindowStyle Hidden c:\na\installation\VisualFX.ps1
powershell.exe -WindowStyle Hidden C:\NA\Installation\UAC_Disable.ps1
powershell.exe -WindowStyle Hidden C:\NA\Installation\DarkMode.ps1
powershell.exe -WindowStyle Hidden C:\NA\Installation\Region_Settings.ps1
powershell.exe -WindowStyle Hidden C:\NA\Installation\Disable_Fast_Boot.ps1
powershell.exe -WindowStyle Hidden C:\NA\Installation\RemoveCapabilities.ps1
powershell.exe -WindowStyle Hidden C:\NA\Installation\Removefeatures.ps1
powershell.exe -WindowStyle Hidden C:\NA\Installation\RemovePackages.ps1
powershell.exe -WindowStyle Hidden C:\NA\Installation\UserOnce.ps1
tzutil /s "South Africa Standard Time" 
powershell.exe -WindowStyle Hidden C:\NA\Installation\software.ps1
timeout 5
powershell.exe -WindowStyle Hidden C:\NA\Installation\Anydesksilent.ps1
cls
powershell -command "& {Set-ExecutionPolicy -ExecutionPolicy Unrestricted -Force}"
powershell.exe -WindowStyle Hidden c:\na\Installation\Desktop_Shortcuts.ps1
timeout 5
powershell -command "& {Set-ExecutionPolicy -ExecutionPolicy Unrestricted -Force}"
powershell.exe -WindowStyle Hidden C:\NA\Installation\remove_printers.ps1
cls
powershell.exe -WindowStyle Hidden C:\NA\Installation\NIC_Power_Management.ps1
timeout 20
cls
powershell.exe -WindowStyle Hidden C:\NA\Installation\updates.ps1
exit
