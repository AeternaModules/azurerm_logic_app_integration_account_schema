output "logic_app_integration_account_schemas_content" {
  description = "Map of content values across all logic_app_integration_account_schemas, keyed the same as var.logic_app_integration_account_schemas"
  value       = { for k, v in azurerm_logic_app_integration_account_schema.logic_app_integration_account_schemas : k => v.content }
}
output "logic_app_integration_account_schemas_file_name" {
  description = "Map of file_name values across all logic_app_integration_account_schemas, keyed the same as var.logic_app_integration_account_schemas"
  value       = { for k, v in azurerm_logic_app_integration_account_schema.logic_app_integration_account_schemas : k => v.file_name }
}
output "logic_app_integration_account_schemas_integration_account_name" {
  description = "Map of integration_account_name values across all logic_app_integration_account_schemas, keyed the same as var.logic_app_integration_account_schemas"
  value       = { for k, v in azurerm_logic_app_integration_account_schema.logic_app_integration_account_schemas : k => v.integration_account_name }
}
output "logic_app_integration_account_schemas_metadata" {
  description = "Map of metadata values across all logic_app_integration_account_schemas, keyed the same as var.logic_app_integration_account_schemas"
  value       = { for k, v in azurerm_logic_app_integration_account_schema.logic_app_integration_account_schemas : k => v.metadata }
}
output "logic_app_integration_account_schemas_name" {
  description = "Map of name values across all logic_app_integration_account_schemas, keyed the same as var.logic_app_integration_account_schemas"
  value       = { for k, v in azurerm_logic_app_integration_account_schema.logic_app_integration_account_schemas : k => v.name }
}
output "logic_app_integration_account_schemas_resource_group_name" {
  description = "Map of resource_group_name values across all logic_app_integration_account_schemas, keyed the same as var.logic_app_integration_account_schemas"
  value       = { for k, v in azurerm_logic_app_integration_account_schema.logic_app_integration_account_schemas : k => v.resource_group_name }
}

