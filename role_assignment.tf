resource "azurerm_role_assignment" "role" {
  scope                = var.scopes
  role_definition_name = var.role_name
  principal_id         = var.principal_id
}

