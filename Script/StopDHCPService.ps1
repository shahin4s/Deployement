#Srop DHCP service on wds02


$servicename = 'DHCPServer'
$arrService = Get-Service -Name $ServiceName

while ($arrService.Status -eq 'Running')
{
    Stop-Service $servicename
    Write-Host $arrService.Status
    Write-Host 'service stopping'
    $arrService.Refresh()
    if ($arrService.Status -ne 'running'){
    Write-Host 'service is not running'
    }
}
