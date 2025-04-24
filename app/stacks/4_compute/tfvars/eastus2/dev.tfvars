vm_type                = "both" # or "linux" or "windows" if you want just one
location               = "eastus2"
resource_group_name    = "rg-someapp-dev"
subnet_id              = "your-subnet-id"
vm_size                = "Standard_D4s_v3"

# Linux VM values
linux_vm_count         = 4
linux_vm_names         = ["linux-vm-01", "linux-vm-02", "linux-vm-03", "linux-vm-04"]
linux_admin_username   = "azureuser"
linux_admin_password   = "P@ssw0rd123!"

# Windows VM values
windows_vm_map = {
  winvm01 = "10.0.1.10"
  winvm02 = "10.0.1.11"
  winvm03 = "10.0.1.12"
  winvm04 = "10.0.1.13"
}
windows_admin_username = "adminuser"
windows_admin_password = "P@ssword!234"