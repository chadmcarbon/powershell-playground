<#
This script creates Domain Local Groups with clear permission suffixes
for assigning permissions to resources including File Shares, Printers, 
Databases, Applications etc
#>

# DLG with stated permissions
"HR-Modify", "IT-Admin", "Operations-ReadOnly", "Remote-ReadExecute", "Sales-ReadWrite", "Server-Admins" |

# Pipe DLG into loop 
ForEach-Object {
    $GroupName = "DLG-$_"
    $OUPath = "OU=Employees, DC=enterprise, DC=local"
    
    # Display output to screen
    Write-Host "Creating Domain Local Group: $GroupName"

    # Create Group using cmdlet and parameters
    New-ADGroup -Name $GroupName -Path $OUPath -GroupScope DomainLocal -GroupCategory Security 
}