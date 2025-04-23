variable "vm_type" {
  type        = string
  description = "Type of VM - linux or windows"
}

variable "resource_group_name" {
  type        = string
  description = "Name of the resource group"
}

variable "location" {
  type        = string
  description = "Azure region"
}

# For Linux VMs (using count)
variable "vm_count" {
  type        = number
  default     = 0
  description = "Number of Linux VMs to create (used with count)"
}

variable "vm_names" {
  type        = list(string)
  default     = []
  description = "List of VM names (for both linux and windows)"
}

variable "vm_name" {
  type        = list(string)
  default     = []
  description = "List of VM names (for both linux and windows)"
}

# For Windows VMs (using for_each)
# If for_each is used, we just reuse the same variable vm_names but map it in parent
# No special variable needed here

variable "vm_size" {
  type        = string
  description = "VM size"
}

variable "admin_username" {
  type        = string
  description = "Admin username for the VM"
}

variable "admin_password" {
  type        = string
  sensitive   = true
  description = "Admin password for the VM"
}
