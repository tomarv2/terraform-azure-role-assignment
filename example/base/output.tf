//output "current_subscription_display_name" {
//  value = module.role_assignment.current_subscription_display_name
//}
//
//output "role_principal_id" {
//  value = module.role_assignment.role_definition_id
//}

output "role_id" {
  value = module.role_assignment.role_id
}

output "role_scope" {
  value = module.role_assignment.role_scope
}

output "principal_type" {
  value = module.role_assignment.principal_type
}

//output "role_definition_scope" {
//  value = module.role_assignment.role_definition_scope
//}
//
//output "role_definition_id" {
//  value = module.role_assignment.role_definition_id
//}
//
//output "role_definition" {
//  value = module.role_assignment.role_definition
//}
//
//output "role_definition_assignable_scopes" {
//  value = module.role_assignment.role_definition_assignable_scopes
//}