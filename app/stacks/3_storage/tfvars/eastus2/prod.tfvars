resource_group_name = "rg-storage-prod-eastus2"
location            = "eastus2"

storage_account_name = "stproduse2sanofi"
account_tier         = "Standard"
account_replication_type = "GRS"

tags = {
  environment = "prod"
  region      = "eastus2"
  project     = "sanofi-iac-expert"
}
