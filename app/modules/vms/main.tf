resource "azurerm_linux_virtual_machine" "vm" {
  count                 = var.vm_type == "linux" ? var.vm_count : 0
  name                  = var.vm_names[count.index]
  resource_group_name   = var.resource_group_name
  location              = var.location
  size                  = var.vm_size
  admin_username        = var.admin_username
  admin_password        = var.admin_password
  disable_password_authentication = false

  network_interface_ids = [] # To be updated if NIC is in scope

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
    name                 = "${var.vm_names[count.index]}-osdisk"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "20_04-lts"
    version   = "latest"
  }
}

resource "azurerm_windows_virtual_machine" "vm" {
  for_each              = var.vm_type == "windows" ? toset([var.vm_name]) : []
  name                  = each.key
  resource_group_name   = var.resource_group_name
  location              = var.location
  size                  = var.vm_size
  admin_username        = var.admin_username
  admin_password        = var.admin_password

  network_interface_ids = [] # To be updated if NIC is in scope

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
    name                 = "${each.key}-osdisk"
  }

  source_image_reference {
    publisher = "MicrosoftWindowsServer"
    offer     = "WindowsServer"
    sku       = "2019-Datacenter"
    version   = "latest"
  }
}
