output "linux_vm_ids" {
  description = "IDs of the Linux virtual machines"
  value       = var.vm_type == "linux" ? azurerm_linux_virtual_machine.linux[*].id : []
}

output "linux_vm_private_ips" {
  description = "Private IP addresses of Linux VMs"
  value       = var.vm_type == "linux" ? azurerm_network_interface.linux[*].private_ip_address : []
}

output "windows_vm_ids" {
  description = "IDs of the Windows virtual machines"
  value       = var.vm_type == "windows" ? values(azurerm_windows_virtual_machine.windows)[*].id : []
}

output "windows_vm_private_ips" {
  description = "Private IP addresses of Windows VMs"
  value       = var.vm_type == "windows" ? values(azurerm_network_interface.windows)[*].private_ip_address : []
}

output "linux_vm_names" {
  value = try([for vm in azurerm_linux_virtual_machine.this : vm.name], [])
}

output "windows_vm_names" {
  value = try([for vm in azurerm_windows_virtual_machine.this : vm.name], [])
}

