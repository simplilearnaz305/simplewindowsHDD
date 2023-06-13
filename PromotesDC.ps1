 $forestName = "vinicloud.ga"
$domainName = "vinicloud.ga"

# Set the DSRM password
$dsrmPassword = "Passw0rd@356"

# Promote the server to a domain controller
Install-ADDSForest -DomainName $domainName -DomainMode Win2012R2 -ForestMode Win2012R2 `
                   -DatabasePath "C:\Windows\NTDS" -LogPath "C:\Windows\NTDS" -SysvolPath "C:\Windows\SYSVOL" `
                   -InstallDns -Force -NoRebootOnCompletion

# Set the DSRM password
Set-ADDSRMPassword -Reset -Password (ConvertTo-SecureString -String $dsrmPassword -AsPlainText -Force) 

# Restart the server to complete the configuration of Active Directory installation
Restart-Computer -Force
