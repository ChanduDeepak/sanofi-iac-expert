output "vnet_id" {
  value       = module.virtual_network.vnet_id
  description = "ID of the virtual network"
}

output "subnet_ids" {
  value       = module.virtual_network.subnet_ids
  description = "IDs of the subnets"
}
