resource "azurerm_role_assignment" "role" {
  scope                     = var.scopes
  role_definition_name      = var.role_name
  principal_id              = var.principal_id
}

//data "azurerm_subscription" "current" {
//}

//resource "azurerm_role_definition" "custom_role" {
//  name               = "${var.teamid}-${var.prjid}"
//  scope              = data.azurerm_subscription.current.id
//
//  permissions {
//    actions     = var.custom_role_actions
//    not_actions = []
//  }
//
//  assignable_scopes = [
//    data.azurerm_subscription.current.id,
//  ]
//}