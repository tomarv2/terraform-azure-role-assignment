output "role_principal_id" {
  value = azurerm_role_assignment.role.principal_id
}

output "role_id" {
  value = azurerm_role_assignment.role.id
}

output "role_scope" {
  value = azurerm_role_assignment.role.scope
}

output "principal_type" {
  value = azurerm_role_assignment.role.principal_type
}

output "role_definition_id" {
  value = azurerm_role_assignment.role.role_definition_id
}
