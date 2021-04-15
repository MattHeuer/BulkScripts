import-module activedirectory

Get-Content 'C:\temp\Local Scripts\Exports\CorporateData_Geraldton\DOM_FSP_Gera_StaffMoves_RW.csv' |
ForEach-Object {Get-ADUser $_ -Properties DisplayName}  | Select-Object  samaccountname,DisplayName |
Export-Csv 'C:\temp\Local Scripts\Exports\CorporateData_Geraldton\FINAL\DOM_FSP_Gera_StaffMoves_RW.csv' -NoTypeInformation