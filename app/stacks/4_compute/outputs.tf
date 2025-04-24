output "linux_vm_names" {
  description = "Names of the Linux VMs"
  value       = var.linux_vm_count > 0 ? module.linux_vms.vm_names : []
}

output "windows_vm_names" {
  description = "Names of the Windows VMs"
  value       = length(var.windows_vm_map) > 0 ? module.windows_vms.vm_names : []
}
