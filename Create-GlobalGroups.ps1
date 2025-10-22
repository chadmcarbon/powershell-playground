<#
This script creates AD Global Membership Groups for permission management. 
#>

# Array to hold GG Usernames
"Operations", "HR", "IT", "Remote", "Sales" | 

# Pipe group names into array and store in variables to create group under OU
ForEach-Object {
    $GroupName = "GG-$_-Users"
    $OUPath = "OU=$_, OU=Employees, DC=enterprise, DC=local"

    # Display current global group being created 
    Write-Host "Creating Global Group: $GroupName"

    # Create Group with specified property
    New-ADGroup -Name $GroupName -Path $OUPath -GroupScope Global -GroupCategory Security
}