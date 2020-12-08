#let's try with the Stop DHCP servier's service
#Shahin 06.Dec.20
#this script add in task scheduler 

$DService = 'DHCPServer'
$Server = 'wds02'
# now look at things
if ((Get-Service 'DHCPServer').status -ne "stopped")
{
   Stop-Service $DService 
   Start-Sleep -Seconds 15
   Write-Host -foregroundcolor Green -Object "The service stopped"
}
else
{
  Write-host -foregroundcolor Yellow -object "Already Stopped"
}