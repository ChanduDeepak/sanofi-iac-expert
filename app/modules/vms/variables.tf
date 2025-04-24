variable "vm_type" {
  description = "Type of VM: linux or windows"
  type        = string
}

variable "location" {
  description = "Azure region"
  type        = string
}

variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
}

variable "subnet_id" {
  description = "Subnet ID to attach the VMs"
  type        = string
}

variable "vm_size" {
  description = "Size of the virtual machines"
  type        = string
  default     = "Standard_D4s_v3"
}

# Linux VMs
variable "linux_vm_count" {
  description = "Number of Linux VMs"
  type        = number
  default     = 0
}

variable "linux_vm_names" {
  description = "List of Linux VM names"
  type        = list(string)
  default     = []
}

# Windows VMs
variable "windows_vm_map" {
  description = "Map of Windows VM names to properties (can be empty strings if unused)"
  type        = map(any)
  default     = {}
}

# Common credentials
variable "admin_username" {
  description = "Admin username for all VMs"
  type        = string
}

variable "admin_password" {
  description = "Admin password for all VMs"
  type        = string
  sensitive   = true
}
