<#
SYNOPSIS
    This script is designed to pull a list of users in a particular OU
NOTES
Generated On: 29/01/2021
Author: Matthew Heuer
#>

#Update the $OUPath variable with the specific OU that you want a list from
$OUpath = 'OU=SharePoint 2016,OU=SharePoint,OU=Service Accounts,OU=Housing,DC=dhw,DC=wa,DC=gov,DC=au'
$ExportPath = "\\dhw.wa.gov.au\corporatedata\IS\TSS\Support Centre\EntOps\Scripts\Exports\$OUpath.csv"
Get-ADUser -Filter * -SearchBase $OUpath | Select-object DistinguishedName,Name,UserPrincipalName | Export-Csv -NoType $ExportPath