output "role_principal_id" {
  description = "Principal id to which this role should be assigned"
  value       = azurerm_role_assignment.role.principal_id
}

output "role_id" {
  description = "Id of the role created"
  value       = azurerm_role_assignment.role.id
}

output "role_scope" {
  description = "A list of scopes the role assignment applies"
  value       = azurerm_role_assignment.role.scope
}

output "principal_type" {
  description = "Principal type"

  value = azurerm_role_assignment.role.principal_type
}

output "role_definition_id" {
  description = "Role definition Id"
  value       = azurerm_role_assignment.role.role_definition_id
}
