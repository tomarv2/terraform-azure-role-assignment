output "id" {
  description = "Role Id"
  value       = module.role_assignment.id
}

output "scope" {
  description = "A list of scopes the role assignment applies"
  value       = module.role_assignment.scope
}

output "principal_type" {
  description = "Principal type"
  value       = module.role_assignment.principal_type
}

output "principal_id" {
  description = "Principal id to which this role should be assigned"
  value       = module.role_assignment.principal_id
}
