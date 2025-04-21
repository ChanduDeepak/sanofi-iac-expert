resource_group_name = "rg-storage-dev-westus2"
location            = "westus2"

storage_account_name = "stdevwus2sanofi"
account_tier         = "Standard"
account_replication_type = "LRS"

tags = {
  environment = "dev"
  region      = "westus2"
  project     = "sanofi-iac-expert"
}
