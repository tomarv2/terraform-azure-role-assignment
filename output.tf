//output "current_subscription_display_name" {
//  value = data.azurerm_subscription.current.display_name
//}

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

//output "role_definition_scope" {
//  value = azurerm_role_definition.custom_role.scope
//}
//
//output "role_definition_id" {
//  value = azurerm_role_definition.custom_role.id
//}
//
//output "role_definition" {
//  value = azurerm_role_definition.custom_role.role_definition_id
//}
//
//output "role_definition_assignable_scopes" {
//  value = azurerm_role_definition.custom_role.assignable_scopes
//}
