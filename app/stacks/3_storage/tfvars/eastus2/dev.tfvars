resource_group_name = "rg-sanofi-az-eus2-dev-001"
location            = "eastus2"

storage_account_name = "stdevuse2sanofi"
account_tier         = "Standard"
account_replication_type = "LRS"

tags = {
  environment = "dev"
  region      = "eastus2"
  project     = "sanofi-iac-expert"
}
