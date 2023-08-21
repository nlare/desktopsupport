$cName = Read-Host -Prompt 'Please enter FQDN in which you would like to retrieve monitor details from: '

$Monitors = Get-WmiObject WmiMonitorID -Namespace root\wmi -ComputerName $cName
$LogFile = "C:\test\monitors.txt"

function Decode {
    If ($args[0] -is [System.Array]) {
        [System.Text.Encoding]::ASCII.GetString($args[0])
    }
    Else {
        "Not Found"
    }
}

echo "Manufacturer", "Name, Serial"

ForEach ($Monitor in $Monitors) {  
    $Manufacturer = Decode $Monitor.ManufacturerName -notmatch 0
    $Name = Decode $Monitor.UserFriendlyName -notmatch 0
    $Serial = Decode $Monitor.SerialNumberID -notmatch 0

    echo "$cName, $Manufacturer, $Name, $Serial" >> $LogFile
}

# Look up manufacturer ID's here:
https://edid.tv/manufacturer/#
