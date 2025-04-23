output "vm_ids" {
  value = (
    var.vm_type == "linux" ?
    azurerm_linux_virtual_machine.this[*].id :
    values(azurerm_windows_virtual_machine.this)[*].id
  )
  description = "List of VM resource IDs"
}

output "name" {
  value = (
    var.vm_type == "linux" ?
    azurerm_linux_virtual_machine.this[*].name :
    values(azurerm_windows_virtual_machine.this)[*].name
  )
  description = "List of VM names"
}

output "private_ips" {
  value = (
    var.vm_type == "linux" ?
    azurerm_network_interface.this[*].private_ip_address :
    values(azurerm_network_interface.this)[*].private_ip_address
  )
  description = "List of private IPs for the VMs"
}
