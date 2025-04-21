variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
}

variable "location" {
  description = "Azure region where the storage account will be deployed"
  type        = string
}

variable "storage_account_name" {
  description = "The name of the storage account"
  type        = string
}

variable "account_tier" {
  description = "Defines the tier to use for this storage account (Standard or Premium)"
  type        = string
}

variable "account_replication_type" {
  description = "The type of replication to use for this storage account (LRS, GRS, etc)"
  type        = string
}

variable "tags" {
  description = "A map of tags to assign to the resource"
  type        = map(string)
}
