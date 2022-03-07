output "role_id" {
  description = "Role Id"
  value       = module.role_assignment.role_id
}

output "role_scope" {
  description = "A list of scopes the role assignment applies"
  value       = module.role_assignment.role_scope
}

output "principal_type" {
  description = "Principal type"
  value       = module.role_assignment.principal_type
}

output "role_principal_id" {
  description = "Principal id to which this role should be assigned"
  value       = module.role_assignment.role_principal_id
}

output "role_definition_id" {
  description = "Role definition Id"
  value       = module.role_assignment.role_definition_id
}
