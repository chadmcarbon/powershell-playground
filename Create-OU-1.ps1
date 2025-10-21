# This PowerShell script creates a list of OU names in AD under the domain name
# Define an array of OU names
"Workstations", "Servers", "Service Accounts" | 

# Loop through each OU name in the array
ForEach-Object {

    # Display the current OU being created
    Write-Host "Creating OU: $_"

    # Create a new OU in AD
    # -Name sets the OU name (from the array)
    # -Path sets the location in the directory tree (domain = enterprise.local)
    New-ADOrganizationalUnit -Name $_ -Path "DC=enterprise, DC=local"
}