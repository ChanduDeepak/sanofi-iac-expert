module "virtual_machines" {
  source = "../../modules/virtual_machine"

  resource_group_name     = var.resource_group_name
  location                = var.location
  vnet_name               = var.vnet_name
  subnet_name             = var.subnet_name
  admin_username          = var.admin_username
  admin_password          = var.admin_password
  vm_count                = var.vm_count
  vm_size                 = var.vm_size
  vm_name_prefix          = var.vm_name_prefix
  tags                    = var.tags
}
