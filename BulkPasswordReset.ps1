$mycreds = Get-Credential
$accounts = "#SamAccountName#","#SamAccountName#","#SamAccountName#"
foreach ($SAM in $accounts)
{
    Set-ADAccountPassword $SAM -Reset -NewPassword (ConvertTo-SecureString -AsPlainText "PASSWORD" -Force) -Credential $mycreds
}
