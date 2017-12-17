#
# Create_ResourceGroup.ps1
#
Param(
	[string] [Parameter(Mandatory=$true)] $ResourceGroupLocation,
	[string] [Parameter(Mandatory=$true)] $ResourceGroupName,
    [string] $SubscriptionId
)

Login-AzureRmAccount 

if($SubscriptionId -ne ''){
    Set-AzureRmContext -SubscriptionId $SubscriptionId
}

New-AzureRmResourceGroup -Location $ResourceGroupLocation -Name $ResourceGroupName