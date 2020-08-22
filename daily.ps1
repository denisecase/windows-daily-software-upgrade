# Windows Daily Software Upgrade
# Schedule with Task Scheduler 
# See: https://github.com/denisecase/windows-daily-software-upgrade
# Optional: add -append to the end of line 6 to append instead of overwrite
$LogFile = $PSScriptRoot + "\log\daily-choco-update.log"
Start-Transcript -path $LogFile 

choco upgrade all -y
refreshenv

Write-Host ""
Read-Host -Prompt "Press Enter to exit"
Stop-Transcript
