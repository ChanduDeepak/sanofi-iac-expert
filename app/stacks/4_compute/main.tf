module "vms" {
  source              = "../../modules/vms"

  location            = var.location
  resource_group_name = var.resource_group_name
  subnet_id           = var.subnet_id
  vm_size             = var.vm_size

  # Linux-specific
  linux_vm_count        = var.linux_vm_count
  linux_vm_names        = var.linux_vm_names
  linux_admin_username  = var.linux_admin_username
  linux_admin_password  = var.linux_admin_password

  # Windows-specific
  windows_vm_map        = var.windows_vm_map
  windows_admin_username = var.windows_admin_username
  windows_admin_password = var.windows_admin_password
}
