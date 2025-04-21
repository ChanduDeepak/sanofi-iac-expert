output "linux_vm_names" {
  value = [for vm in azurerm_linux_virtual_machine.linux_vms : vm.name]
}

output "windows_vm_names" {
  value = [for vm in azurerm_windows_virtual_machine.windows_vms : vm.name]
}

output "linux_vm_private_ips" {
  value = [for vm in azurerm_linux_virtual_machine.linux_vms : vm.private_ip_address]
}

output "windows_vm_private_ips" {
  value = [for vm in azurerm_windows_virtual_machine.windows_vms : vm.private_ip_address]
}
