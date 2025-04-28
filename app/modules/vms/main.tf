resource "azurerm_linux_virtual_machine" "linux" {
  count               = var.linux_vm_count
  name                = var.linux_vm_names[count.index]
  location            = var.location
  resource_group_name = var.resource_group_name
  size                = var.vm_size
  admin_username      = var.linux_admin_username
  admin_password      = var.linux_admin_password
  network_interface_ids = [/* add NIC ID here or remove if not yet available */]

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
    name                 = "osdisk-${count.index}"
  }
}
resource "azurerm_windows_virtual_machine" "windows" {
  for_each            = var.windows_vm_map
  name                = each.value.name
  location            = var.location
  resource_group_name = var.resource_group_name
  size                = var.vm_size
  admin_username      = var.windows_admin_username
  admin_password      = var.windows_admin_password
  network_interface_ids = [/* add NIC ID here or remove if not yet available */]

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
    name                 = "${each.value.name}-osdisk"
  }
}
