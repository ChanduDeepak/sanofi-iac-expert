output "vm_names" {
  description = "List of VM names"
  value       = module.virtual_machines.vm_names
}

output "vm_private_ips" {
  description = "Private IPs of the deployed VMs"
  value       = module.virtual_machines.private_ips
}
