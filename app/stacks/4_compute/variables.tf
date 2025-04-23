variable "linux_vm_count" {
  description = "The number of Linux VMs to be created."
  type        = number
}

variable "linux_vm_names" {
  description = "A list of names for the Linux VMs."
  type        = list(string)
}

variable "linux_vm_size" {
  description = "The size of the Linux VMs."
  type        = string
}

variable "linux_admin_username" {
  description = "The admin username for the Linux VMs."
  type        = string
}

variable "linux_admin_password" {
  description = "The admin password for the Linux VMs."
  type        = string
  sensitive   = true
}

variable "windows_vm_map" {
  description = "A map of Windows VM names to their configurations (size, admin username, password)."
  type = map(object({
    vm_size        = string
    admin_username = string
    admin_password = string
  }))
}

variable "resource_group_name" {
  description = "The name of the resource group where the VMs will be deployed."
  type        = string
}

variable "location" {
  description = "The location (Azure region) for the VMs."
  type        = string
}
