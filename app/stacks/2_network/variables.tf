variable "resource_group_name" {
  type        = string
  description = "Name of the resource group"
}

variable "location" {
  type        = string
  description = "Azure region"
}

variable "vnet_name" {
  type        = string
  description = "Name of the virtual network"
}

variable "address_space" {
  type        = list(string)
  description = "Address space for the VNet"
}

variable "subnets" {
  type = list(object({
    name           = string
    address_prefixes = list(string)
  }))
  description = "List of subnets"
}

variable "tags" {
  type        = map(string)
  description = "Tags for the resources"
}