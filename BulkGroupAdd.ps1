<#
SYNOPSIS
NOTES
Generated On: 29/01/2021
Author: Matthew Heuer
#>

Import-Module ActiveDirectory
$Users = Import-Csv 'C:\temp\Local Scripts\BulkADScripts\Import\TeamsGroupAddList_Samaccountnames.csv'
$ErrorActionPreference = 'Stop'

foreach ($User in $Users) {
    Add-ADGroupMember -Identity #Group Name# -Members $User -Verbose
}

Write-Host "Accounts successfully added to #Group Name#!" -ForegroundColor Green
