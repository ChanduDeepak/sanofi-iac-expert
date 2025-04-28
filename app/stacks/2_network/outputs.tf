# output "vnet_id" {
#   value       = module.vnet.vnet_id
#   description = "ID of the virtual network"
# }

# output "subnet_ids" {
#   value       = module.vnet.subnet_ids
#   description = "IDs of the subnets"
# }

output "vnet_id" {
  value = module.virtual_network.vnet_id
}

output "subnet_ids" {
  value = module.virtual_network.subnet_ids
}
