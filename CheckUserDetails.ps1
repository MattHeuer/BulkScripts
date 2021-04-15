<#
SYNOPSIS
    This script is designed to get account properties on a list of accounts.
NOTES
Generated On: 03/02/2021
Author: Matt Heuer
#>

$users = ForEach ($user in $(Get-Content 'C:\temp\Local Scripts\Exports\APP_THRIMS_Users_SamAccountName.txt')) {
    Get-AdUser $user -Properties *
}
$users | Select-Object samaccountname,displayname,accountexpirationdate | Export-CSV -Path 'C:\temp\Local Scripts\Exports\APP_THRIMS_Users_Members_FINAL.csv' -NoTypeInformation