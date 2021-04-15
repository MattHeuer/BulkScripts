Import-Module ActiveDirectory

#Textfile containing all the required SamAccountNames
$NewUsers = Get-Content -Path "C:\temp\MHeuer\ViewpointUserSamAccountName.txt"
$OU = "OU=Users,OU=Communities,DC=dhw,DC=wa,DC=gov,DC=au"
$Password = @()
$Creds = Get-Credential

Add-Type -AssemblyName System.Web

Foreach ($User in $NewUsers)
{
    $Password = [System.Web.Security.Membership]::GeneratePassword(24,5)
    $UPN = $User + "@communities.wa.gov.au"
    New-ADUser -GivenName $User -Name $User -Path $OU -UserPrincipalName $UPN -Description "ViewPoint app user generic account" -AccountPassword (ConvertTo-SecureString $Password -AsPlainText -Force) -PasswordNeverExpires $true -Enabled $true -Credential $Creds
    Write-Host "$User $Password"
}