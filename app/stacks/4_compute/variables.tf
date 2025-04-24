variable "location" {}
variable "resource_group_name" {}

variable "subnet_id" {}

variable "linux_vm_count" {
  type = number
}
variable "linux_vm_names" {
  type = list(string)
}
variable "linux_admin_username" {}
variable "linux_admin_password" {}

variable "windows_vm_map" {
  type = map(any)
}
variable "windows_admin_username" {}
variable "windows_admin_password" {}

variable "vm_size" {}