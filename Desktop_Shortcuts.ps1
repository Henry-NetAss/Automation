﻿copy-item -Path "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Excel.lnk" -Destination "$env:USERPROFILE\Desktop\Excel.lnk" -Recurse -Force
copy-item -Path "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Word.lnk" -Destination "$env:USERPROFILE\Desktop\Word.lnk" -Recurse -Force
copy-item -Path "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Outlook (Classic).lnk" -Destination "$env:USERPROFILE\Desktop\Outlook.lnk" -Recurse -Force

