resource_group_name = "rg-network-prod-eastus2"
location            = "eastus2"

vnet_name     = "vnet-prod-eastus2"
address_space = ["10.20.0.0/16"]

subnets = [
  {
    name           = "subnet-app"
    address_prefix = "10.20.1.0/24"
  },
  {
    name           = "subnet-db"
    address_prefix = "10.20.2.0/24"
  }
]

tags = {
  environment = "prod"
  region      = "eastus2"
  project     = "sanofi-iac-expert"
}
