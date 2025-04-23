module "storage" {
  source = "../../modules/storage"

  resource_group_name       = var.resource_group_name
  location                  = var.location
  storage_account_name      = var.storage_account_name
  account_tier              = var.account_tier
  tags                      = var.tags
}
