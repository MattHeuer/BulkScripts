<#
SYNOPSIS
    This script is designed to update the end date on multiple accounts.
NOTES
Generated On: 29/01/2021
Updated On: 03/02/2021
Author: Matt Heuer
#>

$ErrorActionPreference = 'Stop'
Import-Module ActiveDirectory
$NewUsers = Get-Content -path '\\dhw.wa.gov.au\corporatedata\IS\TSS\Support Centre\EntOps\Scripts\Imports\ExtendAccounts.txt'
$EndDate = Read-Host "Enter the expiry date for the accounts"

ForEach ($User in $NewUsers) {
    Set-ADUser -Identity $User -AccountExpirationDate $EndDate
    Write-Host "Set $User end date to $EndDate"
}

Write-Host "Accounts end date updated to $EndDate" -ForegroundColor Green