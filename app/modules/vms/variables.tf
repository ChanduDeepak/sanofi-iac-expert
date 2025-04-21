variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
}

variable "location" {
  description = "Azure region"
  type        = string
}

variable "vnet_name" {
  description = "Virtual Network name"
  type        = string
}

variable "subnet_name" {
  description = "Subnet name"
  type        = string
}

variable "tags" {
  description = "Common tags"
  type        = map(string)
  default     = {}
}

variable "vms" {
  description = "List of virtual machines to create"
  type = list(object({
    name            = string
    os_type         = string # "linux" or "windows"
    vm_size         = string
    admin_username  = string
    admin_password  = optional(string)     # for windows
    ssh_public_key  = optional(string)     # for linux
  }))
}
