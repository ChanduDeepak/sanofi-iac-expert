output "linux_vm_names" {
  description = "The names of the created Linux VMs."
  value       = module.linux_vms[*].vm_name
}

output "windows_vm_names" {
  description = "The names of the created Windows VMs."
  value       = [for vm in module.windows_vms : vm.vm_name]
}

output "linux_vm_count" {
  description = "The number of Linux VMs created."
  value       = var.linux_vm_count
}

output "windows_vm_count" {
  description = "The number of Windows VMs created."
  value       = length(module.windows_vms)
}

output "linux_vm_size" {
  description = "The size of the created Linux VMs."
  value       = var.linux_vm_size
}

output "windows_vm_size" {
  description = "The size of the created Windows VMs."
  value       = [for vm in module.windows_vms : vm.vm_size]
}

output "resource_group_name" {
  description = "The name of the resource group."
  value       = var.resource_group_name
}

output "location" {
  description = "The location of the VMs."
  value       = var.location
}
