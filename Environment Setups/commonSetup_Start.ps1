If (-NOT ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator"))
{
    Write-Warning "You do not have Administrator rights to run this script!`nPlease re-run this script as an Administrator!"
    Break
}

# PowerShell normally blocks the execution of scripts
Set-ExecutionPolicy Unrestricted -Scope Process -Force; 

# Install Chocolatey
Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

# Chocolatey command to refresh the current session
refreshenv

# Install Boxstarter
CINST Boxstarter.Chocolatey -y

# Chocolatey command to refresh the current session
refreshenv

Import-Module Boxstarter.Chocolatey
