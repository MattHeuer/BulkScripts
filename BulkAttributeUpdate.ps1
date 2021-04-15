<#
SYNOPSIS
    This script is designed to update a specific attribute on multiple accounts.
NOTES
Generated On: 29/01/2021
Author: Matthew Heuer
#>

Import-Module ActiveDirectory
$Users = Import-Csv #Import Path#
$Type = 'Training Account'
$ErrorActionPreference = 'Stop'

foreach ($User in $Users) {
    Set-ADUser -Identity $User.SamAccountName -Manager $User.NewManager -Replace @{employeetype=$Type} -Verbose
}

Write-Host "Accounts successfully updated!" -ForegroundColor Green
