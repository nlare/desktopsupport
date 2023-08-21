if ($response -eq 'y')
{
    do
    {
    $cName = Read-Host -Prompt 'Please Enter FQDN to retrieve SN: ' 
    get-WMIObject win32_bios -computername $cName | format-list serialnumber

    $reponse = Read-Host -Prompt 'Would you like to look up more sn? (Please answer "Y" or "N"?'
    } 
    while($reponse -eq 'y')
}
Read-Host 'Have a nice day!'
PAUSE