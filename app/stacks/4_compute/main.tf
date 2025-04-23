module "linux_vms" {
  source              = "../../modules/vms"
  for_each            = toset([])
  vm_type             = "linux"
  vm_count            = var.linux_vm_count
  vm_names            = var.linux_vm_names
  vm_size             = var.linux_vm_size
  admin_username      = var.linux_admin_username
  admin_password      = var.linux_admin_password
  resource_group_name = var.resource_group_name
  location            = var.location
}

module "windows_vms" {
  source              = "../../modules/vms"
  for_each            = var.windows_vm_map
  vm_type             = "windows"
  vm_name             = each.key
  vm_size             = each.value.vm_size
  admin_username      = each.value.admin_username
  admin_password      = each.value.admin_password
  resource_group_name = var.resource_group_name
  location            = var.location
}
