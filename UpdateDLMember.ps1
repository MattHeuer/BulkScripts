<#
.SYNOPSIS
    Used to bulk update a distribution list that has been migrated into Exchange Online
.NOTES
    Generated On: 12/04/2020
    Author: Matthew Heuer
#>

Import-CSV 'C:\temp\Local Scripts\Imports\SocialClubMembers_Update.csv' | ForEach-Object {
    Add-DistributionGroupMember -Identity "#DL Primary Address#" -Member $_.Name -Verbose
}
