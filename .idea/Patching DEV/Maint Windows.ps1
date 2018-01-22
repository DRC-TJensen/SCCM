
# module for Windows PowerShell and will connect to the site.
#
# This script was auto-generated at '1/22/2018 1:08:11 PM'.

# Uncomment the line below if running in an environment where script signing is
# required.
Set-ExecutionPolicy -ExecutionPolicy Bypass -Scope Process

# Site configuration
$SiteCode = "DR1" # Site code
$ProviderMachineName = "dcwinfp026" # SMS Provider machine name

# Customizations
$initParams = @{}
$initParams.Add("Verbose", $true) # Uncomment this line to enable verbose logging
#$initParams.Add("ErrorAction", "Stop") # Uncomment this line to stop the script on any errors

# Do not change anything below this line

# Import the ConfigurationManager.psd1 module
if((Get-Module ConfigurationManager) -eq $null) {
    Import-Module "$($ENV:SMS_ADMIN_UI_PATH)\..\ConfigurationManager.psd1" @initParams
}

# Connect to the site's drive if it is not already present
if((Get-PSDrive -Name $SiteCode -PSProvider CMSite -ErrorAction SilentlyContinue) -eq $null) {
    New-PSDrive -Name $SiteCode -PSProvider CMSite -Root $ProviderMachineName @initParams
}

# Set the current location to be the site code.
Set-Location "$($SiteCode):\" @initParams


#Gets the maintenance windows for a collection.
#Get-CMMaintenanceWindow

#Modifies a maintenance window.
#Set-CMMaintenanceWindow

#Changes settings for a Configuration Manager maintenance task.
#Set-CMSiteMaintenanceTask

 #s