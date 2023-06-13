# Promote the server to a domain controller
$adminCreds = Get-Credential -Message "Enter the credentials for a user with administrative privileges"
$domainName = "yourdomain.com"
$safeModePassword = ConvertTo-SecureString -String "P@ssw0rd" -AsPlainText -Force

$promoteParams = @{
    DomainName = $domainName
    Credential = $adminCreds
    SafeModeAdministratorPassword = $safeModePassword
    InstallDns = $true
    Force = $true
    ErrorAction = 'Stop'
}

try {
    Install-ADDSDomainController @promoteParams -NoRebootOnCompletion
    Write-Host "Domain controller promotion completed successfully."
} catch {
    Write-Host "Error promoting the server to a domain controller:`n$($_.Exception.Message)"
}
