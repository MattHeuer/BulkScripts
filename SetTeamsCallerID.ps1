$TeamsUsers = Get-Content -path 'C:\temp\Local Scripts\Imports\TeamsNoCallerID_UPN.txt'

ForEach ($User in $TeamsUsers) {
    Grant-CsCallingLineIdentity -Identity $User -PolicyName Anonymous -ErrorAction stop
    Write-Host "Set CallingLineIdentity policy to Anonymous for $User"
}
