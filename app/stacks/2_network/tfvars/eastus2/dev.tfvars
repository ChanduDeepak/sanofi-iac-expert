resource_group_name = "rg-network-dev-eastus2"
location            = "eastus2"

vnet_name     = "vnet-dev-eastus2"
address_space = ["10.10.0.0/16"]

subnets = [
  {
    name           = "subnet-app"
    address_prefix = "10.10.1.0/24"
  },
  {
    name           = "subnet-db"
    address_prefix = "10.10.2.0/24"
  }
]

tags = {
  environment = "dev"
  region      = "eastus2"
  project     = "sanofi-iac-expert"
}
