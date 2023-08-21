# These are based off DellBIOS Provicer package: https://www.powershellgallery.com/packages/DellBIOSProvider/2.7.0

﻿# List of availble commands:
# Import-Module DellSmbios
# Get-DellBIOSSetting -Namespace "root\dcim\sysman" -CimSession $smbiosSession
# $smbiosSession = New-CimSession -ComputerName "localhost" -Namespace "root\dcim\sysman"
# Set-DellBIOSSetting -CimSession $smbiosSession -Name "VT for Direct I/O" -Value 1
# Restart-Computer
# Get-DellBIOSSetting -CimSession $smbiosSession -Name "VT for Direct I/O"
# Restore-DellBIOSSettings -CimSession $smbiosSession
# Export-DellBIOSSettings -CimSession $smbiosSession -Path "C:\Path\To\Export.csv"
# Import-DellBIOSSettings -CimSession $smbiosSession -Path "C:\Path\To\Import.csv"



#Items that I commonly use
Set-DellAutoOnForSelectDays
Set-Item 'EveryDay' -path DellSmbios:\Powermanagement\AutoOn
Set-Item '19' -path DellSmbios:\Powermanagement\AutoOnHr
Set-Item 'On' -path DellSmbios:\Powermanagement\AcPwrRcvry
Set-Item 'Enabled' -path DellSmbios:\Powermanagement\BlockSleep
