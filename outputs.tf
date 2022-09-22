output "principal_id" {
  description = "Principal id to which this role should be assigned"
  value       = [for role in azurerm_role_assignment.role : role.principal_id]
}

output "id" {
  description = "The Role Assignment ID."
  value       = [for role in azurerm_role_assignment.role : role.id]
}

output "scope" {
  description = "A list of scopes the role assignment applies"
  value       = [for role in azurerm_role_assignment.role : role.scope]
}

output "principal_type" {
  description = "The type of the principal_id, e.g. User, Group, Service Principal, Application, etc."
  value       = [for role in azurerm_role_assignment.role : role.principal_type]
}
