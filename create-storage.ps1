param(
  [Parameter(Mandatory=$True)]
  [string]$resourcegroup,
  [Parameter(Mandatory=$True)]
  [string]$name,
  $location="canadacentral",
  [ValidateSet("Standard_LRS", "Premium_LRS", "Standard_GRS", "Standard_ZRS", "Standard_RAGRS")]
  $sku="Standard_LRS",
  [ValidateSet("BlobStorage", "Storage", "StorageV2")]
  $kind="Storage"
)

New-AzureRMStorageAccount -ResourceGroupName $resourcegroup -name $name -location $location -SkuName $sku -kind $kind
