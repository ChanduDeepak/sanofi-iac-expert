variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}

variable "location" {
  description = "Azure region for VM deployment"
  type        = string
}

variable "vnet_name" {
  description = "Name of the Virtual Network"
  type        = string
}

variable "subnet_name" {
  description = "Name of the subnet where the VMs will be placed"
  type        = string
}

variable "admin_username" {
  description = "Admin username for the VM"
  type        = string
}

variable "admin_password" {
  description = "Admin password for the VM"
  type        = string
  sensitive   = true
}

variable "vm_count" {
  description = "Number of VMs to deploy"
  type        = number
}

variable "vm_size" {
  description = "Size of the virtual machines (e.g., Standard_DS1_v2)"
  type        = string
}

variable "vm_name_prefix" {
  description = "Prefix to use for naming VMs"
  type        = string
}

variable "tags" {
  description = "A map of tags for resources"
  type        = map(string)
}
