data "azurerm_subscription" "primary" {
}

resource "azurerm_role_assignment" "role" {
  scope                = var.scopes != null ? var.scopes : data.azurerm_subscription.primary.id
  role_definition_name = var.role_name
  principal_id         = var.principal_id
}
