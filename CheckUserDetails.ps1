<#
SYNOPSIS
    This script is designed to get account properties on a list of accounts.
NOTES
Generated On: 03/02/2021
Author: Matt Heuer
#>

$users = ForEach ($user in $(Get-Content '#Import Path#')) {
    Get-AdUser $user -Properties *
}
$users | Select-Object samaccountname,displayname,accountexpirationdate | Export-CSV -Path '#Export Path' -NoTypeInformation
