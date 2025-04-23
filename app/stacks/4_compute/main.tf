# app/stacks/4_compute/main.tf

module "linux_vms" {
  source              = "../../modules/linux_vm"
  count               = var.linux_vm_count
  resource_group_name = var.resource_group_name
  location            = var.location
  vm_size             = var.vm_size
  vm_name             = "${var.env}-linux-${count.index + 1}"
  admin_username      = var.admin_username
  admin_password      = var.admin_password
}

module "windows_vms" {
  source              = "../../modules/windows_vm"
  for_each            = var.windows_vms
  resource_group_name = var.resource_group_name
  location            = var.location
  vm_size             = var.vm_size
  vm_name             = each.value.vm_name
  admin_username      = each.value.admin_username
  admin_password      = each.value.admin_password
}
