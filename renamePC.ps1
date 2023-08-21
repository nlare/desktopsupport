$oldName = Read-Host -Prompt 'Please enter current computername you would like to change: '
$newName = Read-Host -Prompt 'Please enter the name you would like to change it to: '
$dmusr = Read-Host -Prompt 'Please enter your domain\user: '


Rename-Computer -ComputerName $oldName -NewName $newName -DomainCredential $dmusr -Force
pause
