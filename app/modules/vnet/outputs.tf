output "vnet_id" {
  value = azurerm_virtual_network.vnet-sanofi.id
}

output "vnet_name" {
  value = azurerm_virtual_network.vnet-sanofi.name
}

output "subnet_ids" {
  value = { for k, subnet in azurerm_subnet.vnet-sanofi : k => subnet.id }
}
