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
  # --- Unconfirmed validation candidates, derived from azurerm_logic_app_integration_account_schema's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: name
  #   source:    [from validate.IntegrationAccountSchemaName] !ok
  # path: name
  #   condition: length(value) <= 80
  #   message:   [from validate.IntegrationAccountSchemaName: invalid when len(value) > 80]
  #   source:    [from validate.IntegrationAccountSchemaName: invalid when len(value) > 80]
  # path: name
  #   source:    [from validate.IntegrationAccountSchemaName] !regexp.MustCompile(`^[A-Za-z0-9-()._]+$`).MatchString(v)
  # path: resource_group_name
  #   condition: length(value) <= 90
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) > 90]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) > 90]
  # path: resource_group_name
  #   condition: !endswith(value, ".")
  #   message:   [from resourcegroups.ValidateName: must not end with "."]
  #   source:    [from resourcegroups.ValidateName: must not end with "."]
  # path: resource_group_name
  #   condition: length(value) != 0
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) == 0]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) == 0]
  # path: resource_group_name
  #   source:    [from resourcegroups.ValidateName] !matched
  # path: integration_account_name
  #   source:    validate.IntegrationAccountName: no recognizable `if ... { errors = append(...) }` pattern - read it by hand
  # path: content
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: file_name
  #   source:    [from validate.IntegrationAccountSchemaFileName] !ok
  # path: file_name
  #   source:    [from validate.IntegrationAccountSchemaFileName] !strings.HasSuffix(v, ".xsd")
  # path: metadata
  #   source:    validation.StringIsJSON(...) - no translation rule yet, add one
}

