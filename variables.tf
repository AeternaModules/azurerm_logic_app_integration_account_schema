variable "logic_app_integration_account_schemas" {
  description = <<EOT
Map of logic_app_integration_account_schemas, attributes below
Required:
    - content
    - integration_account_name
    - name
    - resource_group_name
Optional:
    - file_name
    - metadata
EOT

  type = map(object({
    content                  = string
    integration_account_name = string
    name                     = string
    resource_group_name      = string
    file_name                = optional(string)
    metadata                 = optional(string)
  }))
  validation {
    condition = alltrue([
      for k, v in var.logic_app_integration_account_schemas : (
        length(v.resource_group_name) <= 90
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) > 90]"
  }
  validation {
    condition = alltrue([
      for k, v in var.logic_app_integration_account_schemas : (
        !endswith(v.resource_group_name, ".")
      )
    ])
    error_message = "[from resourcegroups.ValidateName: must not end with \".\"]"
  }
  validation {
    condition = alltrue([
      for k, v in var.logic_app_integration_account_schemas : (
        length(v.resource_group_name) != 0
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) == 0]"
  }
  validation {
    condition = alltrue([
      for k, v in var.logic_app_integration_account_schemas : (
        length(v.content) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.logic_app_integration_account_schemas : (
        v.metadata == null || (can(jsondecode(v.metadata)))
      )
    ])
    error_message = "must be valid JSON"
  }
  # Note: 7 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

