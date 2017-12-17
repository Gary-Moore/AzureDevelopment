#
# Create_BlogStorage.ps1
#

Param()
Get-AzureRMStorageAccount | Select StorageAccountName, Location

# Get list of locations and select one.
Get-AzureRmLocation | select Location 
$location = "eastus"