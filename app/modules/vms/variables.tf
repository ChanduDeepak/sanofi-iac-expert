variable "location" {
  type = string
}

variable "vm_type" {
  description = "Type of VM to create (linux, windows, or all)"
  type        = string
}

variable "resource_group_name" {
  type = string
}

variable "subnet_id" {
  type = string
}

variable "vm_size" {
  type = string
}

# Linux VMs
variable "linux_vm_count" {
  type    = number
  default = 0
}

variable "linux_vm_names" {
  type    = list(string)
  default = []
}

variable "linux_admin_username" {
  type    = string
  default = null
}

variable "linux_admin_password" {
  type    = string
  default = null
}

# Windows VMs
variable "windows_vm_map" {
  type    = map(any)
  default = {}
}

variable "windows_admin_username" {
  type    = string
  default = null
}

variable "windows_admin_password" {
  type    = string
  default = null
}
