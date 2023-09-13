@echo off
cd c:\NA\Installation
powershell.exe c:\na\installation\Region_Settings.ps1
tzutil /s "South Africa Standard Time"
timeout 5
chrome.exe /silent /install
tsprint.exe /silent
zoom.exe /silent
timeout 15
nettime.exe /silent
exit
