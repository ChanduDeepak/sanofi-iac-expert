resource_group_name = "rg-storage-prod-westus2"
location            = "westus2"

storage_account_name = "stprodwus2sanofi"
account_tier         = "Standard"
account_replication_type = "GRS"

tags = {
  environment = "prod"
  region      = "westus2"
  project     = "sanofi-iac-expert"
}
