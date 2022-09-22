data "azurerm_subscription" "primary" {}

resource "azurerm_role_assignment" "role" {
  for_each = var.roles_config != null ? var.roles_config : {}

  scope                = try(each.value.scope, data.azurerm_subscription.primary.id)
  role_definition_id   = try(each.value.role_definition_id, null)
  role_definition_name = try(each.value.role_definition_name, null)
  principal_id         = each.value.principal_id
  description          = try(each.value.role_definition_name, null)
}
