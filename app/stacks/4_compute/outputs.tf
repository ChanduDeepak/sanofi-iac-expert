output "linux_vm_names" {
  description = "Names of the Linux VMs"
  value       = [for vm in azurerm_linux_virtual_machine.linux_vms : vm.name]
}

output "linux_vm_private_ips" {
  description = "Private IPs of the Linux VMs"
  value       = [for nic in azurerm_network_interface.linux_nics : nic.private_ip_address]
}

output "windows_vm_names" {
  description = "Names of the Windows VMs"
  value       = [for vm in azurerm_windows_virtual_machine.windows_vms : vm.name]
}

output "windows_vm_private_ips" {
  description = "Private IPs of the Windows VMs"
  value       = [for vm in azurerm_network_interface.windows_nics : vm.private_ip_address]
}
