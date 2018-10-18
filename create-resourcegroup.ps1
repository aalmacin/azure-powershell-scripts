param(
  [Parameter(Mandatory=$True)]
  [string]$name,
  [Parameter(Mandatory=$True)]
  [string]$location='Canada Central'
)
New-AzureRmResourceGroup -Name $name -Location $location
