output "storage_account_name" {
  description = "The name of the storage account"
  value       = module.storage.storage_account_name
}

output "storage_account_primary_endpoint" {
  description = "Primary endpoint for the storage account"
  value       = module.storage.primary_blob_endpoint
}
