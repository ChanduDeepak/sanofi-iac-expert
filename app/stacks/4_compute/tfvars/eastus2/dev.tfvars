# General config
location            = "eastus2"
vm_type = "all"
resource_group_name = "rg-dev"
subnet_id           = "/subscriptions/xxx/resourceGroups/rg-dev/providers/Microsoft.Network/virtualNetworks/vnet-dev/subnets/default"
vm_size             = "Standard_D4s_v3"

# Linux VM config (4 VMs using count)
linux_vm_count        = 4
linux_vm_names        = ["linux-vm01", "linux-vm02", "linux-vm03", "linux-vm04"]
linux_admin_username  = "linuxadmin"
linux_admin_password  = "P@ssw0rdLinux123"

# Windows VM config (4 VMs using for_each)
windows_vm_map = {
  "vm01" = { name = "win-vm01" }
  "vm02" = { name = "win-vm02" }
  "vm03" = { name = "win-vm03" }
  "vm04" = { name = "win-vm04" }
}
windows_admin_username = "winadmin"
windows_admin_password = "P@ssw0rdWin123"
