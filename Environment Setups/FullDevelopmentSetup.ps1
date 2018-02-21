Invoke-Expression .\commonSetup_Start.ps1

#The problem with installing packages in this fashion is that it appears to create a new temp package for every install...

Install-BoxstarterPackage -PackageName ./boxstarter_Test.txt -DisableReboots

#Chocolatey command to refresh the current session
refreshenv