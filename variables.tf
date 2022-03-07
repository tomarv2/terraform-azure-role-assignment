variable "scopes" {
  description = "A list of scopes the role assignment applies"
  default     = null
  type        = string
}

variable "principal_id" {
  description = "Principal id to which this role should be assigned"
  type        = string
}

variable "role_name" {
  type        = string
  default     = "Reader"
  description = "The role to assign"
}
