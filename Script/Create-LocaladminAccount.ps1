# When used in a MDT task sequence, copy the script to deployment share / scripts folder,
# and use the below command line:
# Powershell.exe -ExecutionPolicy ByPass -File "%SCRIPTROOT%\Create_localadmin_account.ps1"

#Enable Remotesigne
set-executionpolicy remotesigned 
$username=hostname | %{ $_.Split('-')[0]; }
#$password=Read-Host -AsSecureString
$newuser=New-LocalUser -Name $username.ToLower() -NoPassword 
Add-LocalGroupMember -Name administrators -Member $newuser
#disable RemoteSigne
Set-ExecutionPolicy Restricted
