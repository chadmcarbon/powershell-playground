<# 
This Script creates Departmental OUs in the main Employee OU in Active
Directory Users and Computers.
#>

# Define departmental OUs for creation
# Pipe them into loop
"HR", "Sales", "Finance", "IT", "Operations" | 

# Loop through OUs being created
ForEach-Object {
    
    # Display departmental OU being created 
    Write-Host "Creating OU: Employees\$_"

    # Create departmental OUs 
    New-ADOrganizationalUnit -Name $_ -Path "OU=Employees, DC=enterprise, DC=local"
}