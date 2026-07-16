output "logic_app_integration_account_schemas_id" {
  description = "Map of id values across all logic_app_integration_account_schemas, keyed the same as var.logic_app_integration_account_schemas"
  value       = { for k, v in azurerm_logic_app_integration_account_schema.logic_app_integration_account_schemas : k => v.id if v.id != null && length(v.id) > 0 }
}
output "logic_app_integration_account_schemas_content" {
  description = "Map of content values across all logic_app_integration_account_schemas, keyed the same as var.logic_app_integration_account_schemas"
  value       = { for k, v in azurerm_logic_app_integration_account_schema.logic_app_integration_account_schemas : k => v.content if v.content != null && length(v.content) > 0 }
}
output "logic_app_integration_account_schemas_file_name" {
  description = "Map of file_name values across all logic_app_integration_account_schemas, keyed the same as var.logic_app_integration_account_schemas"
  value       = { for k, v in azurerm_logic_app_integration_account_schema.logic_app_integration_account_schemas : k => v.file_name if v.file_name != null && length(v.file_name) > 0 }
}
output "logic_app_integration_account_schemas_integration_account_name" {
  description = "Map of integration_account_name values across all logic_app_integration_account_schemas, keyed the same as var.logic_app_integration_account_schemas"
  value       = { for k, v in azurerm_logic_app_integration_account_schema.logic_app_integration_account_schemas : k => v.integration_account_name if v.integration_account_name != null && length(v.integration_account_name) > 0 }
}
output "logic_app_integration_account_schemas_metadata" {
  description = "Map of metadata values across all logic_app_integration_account_schemas, keyed the same as var.logic_app_integration_account_schemas"
  value       = { for k, v in azurerm_logic_app_integration_account_schema.logic_app_integration_account_schemas : k => v.metadata if v.metadata != null && length(v.metadata) > 0 }
}
output "logic_app_integration_account_schemas_name" {
  description = "Map of name values across all logic_app_integration_account_schemas, keyed the same as var.logic_app_integration_account_schemas"
  value       = { for k, v in azurerm_logic_app_integration_account_schema.logic_app_integration_account_schemas : k => v.name if v.name != null && length(v.name) > 0 }
}
output "logic_app_integration_account_schemas_resource_group_name" {
  description = "Map of resource_group_name values across all logic_app_integration_account_schemas, keyed the same as var.logic_app_integration_account_schemas"
  value       = { for k, v in azurerm_logic_app_integration_account_schema.logic_app_integration_account_schemas : k => v.resource_group_name if v.resource_group_name != null && length(v.resource_group_name) > 0 }
}

