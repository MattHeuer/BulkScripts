<#
SYNOPSIS
    This script is designed to pull a list of users in a particular OU
NOTES
Generated On: 29/01/2021
Author: Matthew Heuer
#>

#Update the $OUPath variable with the specific OU that you want a list from
$OUpath = '#OU Path#'
$ExportPath = "#Export Path#"
Get-ADUser -Filter * -SearchBase $OUpath | Select-object DistinguishedName,Name,UserPrincipalName | Export-Csv -NoType $ExportPath
