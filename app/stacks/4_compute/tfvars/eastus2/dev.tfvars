resource_group_name = "rg-dev-eastus2"
location            = "eastus2"
linux_vm_count      = 4
linux_vm_name_prefix = "devlinuxvm"

windows_vms = {
  "winvm1" = {
    admin_username = "adminuser"
    admin_password = "P@ssw0rd123!"
  },
  "winvm2" = {
    admin_username = "adminuser"
    admin_password = "P@ssw0rd123!"
  },
  "winvm3" = {
    admin_username = "adminuser"
    admin_password = "P@ssw0rd123!"
  },
  "winvm4" = {
    admin_username = "adminuser"
    admin_password = "P@ssw0rd123!"
  }
}

vm_size = "Standard_D4s_v3"
subnet_id = "/subscriptions/xxxx/resourceGroups/rg-dev-eastus2/providers/Microsoft.Network/virtualNetworks/vnet-dev-eastus2/subnets/default"
