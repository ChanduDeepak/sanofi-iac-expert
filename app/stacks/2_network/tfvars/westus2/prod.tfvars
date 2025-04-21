resource_group_name = "rg-network-prod-westus2"
location            = "westus2"

vnet_name     = "vnet-prod-westus2"
address_space = ["10.40.0.0/16"]

subnets = [
  {
    name           = "subnet-app"
    address_prefix = "10.40.1.0/24"
  },
  {
    name           = "subnet-db"
    address_prefix = "10.40.2.0/24"
  }
]

tags = {
  environment = "prod"
  region      = "westus2"
  project     = "sanofi-iac-expert"
}
