<#
This script nests (adds) the Employee Global Groups into the Domain Local Group 
using the Add-ADGroupMember cmdlet.

Important for assigning permissions to users and not individuals.
#>

# Display the message on the console...
Write-Host "Nesting GG into DLG for AGDLP model..."

# Place GG Members into their corresponding Identity (Target Group)
Add-ADGroupMember -Identity "DLG-Finance-Modify" -Members "GG-Finance-Users" 
Add-ADGroupMember -Identity "DLG-HR-Modify" -Members "GG-HR-Users"
Add-ADGroupMember -Identity "DLG-IT-Users" -Members "GG-IT-Users"
Add-ADGroupMember -Identity "DLG-Operations-ReadOnly" -Members "GG-Operations-Users"
Add-ADGroupMember -Identity "DLG-Remote-ReadExecute" -Members "GG-Remote-Users"
Add-ADGroupMember -Identity "DLG-Sales-ReadWrite" -Members "GG-Sales-Users"
Add-ADGroupMember -Identity "DLG-Server-Admins" -Members "GG-Server-Admins"