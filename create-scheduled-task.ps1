# Create Scheduled Task in Task Scheduler 
# for the Windows Daily Software Upgrade
# See: https://github.com/denisecase/windows-daily-software-upgrade

$taskName = "_ChocoUpgrade"
$pathToFile = $PSScriptRoot +  "\daily.ps1"
$argument = '-File "' + $pathToFile + '"'

$exists = Get-ScheduledTask | Where-Object { $_.TaskName -like $taskName }
if ($exists) {
  Write-Host "Delete scheduled task $taskName"
  Unregister-ScheduledTask -TaskName $taskName -Confirm:$false
}
Write-Host "Create scheduled task $taskName"
$action = New-ScheduledTaskAction -Execute "powershell.exe" -Argument $argument
$trigger = New-ScheduledTaskTrigger -Daily -At 10:45am
$settings = New-ScheduledTaskSettingsSet -ExecutionTimeLimit (New-TimeSpan -Minutes 60)
Register-ScheduledTask -Action $action -TaskName $taskName -Trigger $trigger -Settings $settings 

Write-Host ""
Write-Host "Success! Hit ALT+SPACE C to close this window."
cmd /c Pause | out-null
