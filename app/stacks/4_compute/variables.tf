variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
}

variable "location" {
  description = "Azure region"
  type        = string
}

variable "linux_vm_count" {
  description = "Number of Linux VMs"
  type        = number
  default     = 4
}

variable "linux_vm_name_prefix" {
  description = "Prefix for Linux VM names"
  type        = string
  default     = "linuxvm"
}

variable "windows_vms" {
  description = "Map of Windows VM names to config"
  type = map(object({
    admin_username = string
    admin_password = string
  }))
  default = {}
}

variable "vm_size" {
  description = "Size for the VMs"
  type        = string
  default     = "Standard_D4s_v3"
}

variable "subnet_id" {
  description = "Subnet ID to place the VMs"
  type        = string
}
