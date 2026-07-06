output "logic_app_integration_account_schemas" {
  description = "All logic_app_integration_account_schema resources"
  value       = azurerm_logic_app_integration_account_schema.logic_app_integration_account_schemas
}
output "logic_app_integration_account_schemas_content" {
  description = "List of content values across all logic_app_integration_account_schemas"
  value       = [for k, v in azurerm_logic_app_integration_account_schema.logic_app_integration_account_schemas : v.content]
}
output "logic_app_integration_account_schemas_file_name" {
  description = "List of file_name values across all logic_app_integration_account_schemas"
  value       = [for k, v in azurerm_logic_app_integration_account_schema.logic_app_integration_account_schemas : v.file_name]
}
output "logic_app_integration_account_schemas_integration_account_name" {
  description = "List of integration_account_name values across all logic_app_integration_account_schemas"
  value       = [for k, v in azurerm_logic_app_integration_account_schema.logic_app_integration_account_schemas : v.integration_account_name]
}
output "logic_app_integration_account_schemas_metadata" {
  description = "List of metadata values across all logic_app_integration_account_schemas"
  value       = [for k, v in azurerm_logic_app_integration_account_schema.logic_app_integration_account_schemas : v.metadata]
}
output "logic_app_integration_account_schemas_name" {
  description = "List of name values across all logic_app_integration_account_schemas"
  value       = [for k, v in azurerm_logic_app_integration_account_schema.logic_app_integration_account_schemas : v.name]
}
output "logic_app_integration_account_schemas_resource_group_name" {
  description = "List of resource_group_name values across all logic_app_integration_account_schemas"
  value       = [for k, v in azurerm_logic_app_integration_account_schema.logic_app_integration_account_schemas : v.resource_group_name]
}

