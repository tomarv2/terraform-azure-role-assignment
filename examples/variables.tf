variable "principal_id" {
  description = "MSI principal  Id"
  type        = string
}

variable "scopes" {
  type        = string #list(any)
  default     = null   #[]
  description = "A list of scopes the role assignment applies to."
}
