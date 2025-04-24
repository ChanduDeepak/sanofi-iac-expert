location              = "eastus2"
resource_group_name   = "rg-dev-eastus2"
subnet_id             = "/subscriptions/xxxx/resourceGroups/rg-dev-eastus2/providers/Microsoft.Network/virtualNetworks/vnet-dev-eastus2/subnets/snet-dev"

# Linux VM configuration
linux_vm_count        = 4
linux_vm_names        = ["linuxvm01", "linuxvm02", "linuxvm03", "linuxvm04"]
linux_admin_username  = "azureuser"
linux_admin_password  = "P@ssw0rd123!" # Preferably store this in a secret

# Windows VM configuration
windows_vm_map = {
  "winvm01" = {
    name     = "winvm01"
    hostname = "WINVM01"
  }
  "winvm02" = {
    name     = "winvm02"
    hostname = "WINVM02"
  }
  "winvm03" = {
    name     = "winvm03"
    hostname = "WINVM03"
  }
  "winvm04" = {
    name     = "winvm04"
    hostname = "WINVM04"
  }
}
windows_admin_username = "adminuser"
windows_admin_password = "SecureP@ssword456!" # Preferably store this in a secret

# Common VM size
vm_size = "Standard_D4s_v3"