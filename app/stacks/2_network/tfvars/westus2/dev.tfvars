resource_group_name = "rg-network-dev-westus2"
location            = "westus2"

vnet_name     = "vnet-dev-westus2"
address_space = ["10.30.0.0/16"]

subnets = [
  {
    name           = "subnet-app"
    address_prefix = "10.30.1.0/24"
  },
  {
    name           = "subnet-db"
    address_prefix = "10.30.2.0/24"
  }
]

tags = {
  environment = "dev"
  region      = "westus2"
  project     = "sanofi-iac-expert"
}
