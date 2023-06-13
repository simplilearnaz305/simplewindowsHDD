# Install Active Directory Domain Services
Install-WindowsFeature -Name AD-Domain-Services -IncludeManagementTools

# Promote the server to a domain controller
$adminCreds = Get-Credential -Message "Enter the credentials for a user with administrative privileges"
Install-ADDSForest -DomainName "yourdomain.com" -SafeModeAdministratorPassword (ConvertTo-SecureString -String "P@ssw0rd" -AsPlainText -Force) -Credential $adminCreds -InstallDns -DomainMode Win2012R2 -ForestMode Win2012R2 -NoRebootOnCompletion

# Configure DNS settings
$dnsServer = Get-DnsServerPrimaryZone
Set-DnsServerPrimaryZone -Name "yourdomain.com" -DynamicUpdate Secure

# Restart the server to complete the Active Directory installation
Restart-Computer -Force
