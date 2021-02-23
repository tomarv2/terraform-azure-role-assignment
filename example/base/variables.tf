variable "email" {
  description = "email address to be used for tagging (suggestion: use group email address)"
}

variable "teamid" {
  description = "(Required) Name of the team/group e.g. devops, dataengineering. Should not be changed after running 'tf apply'"
}

variable "prjid" {
  description = "(Required) Name of the project/stack e.g: mystack, nifieks, demoaci. Should not be changed after running 'tf apply'"
}

variable "subscription_id" {}

variable "client_id" {}

variable "client_secret" {}

variable "tenant_id" {}

variable "password" {
  type        = string
  default     = ""
  description = "A password for the service principal."
}

variable "end_date" {
  type        = string
  default     = null
  description = "The relative duration or RFC3339 date after which the password expire."
}

variable "years" {
  type        = number
  default     = null
  description = "The number of years after which the password expire. Either this or `end_date` should be specified, but not both."
}

variable "scopes" {
  description = "A list of scopes the role assignment applies to."
}

variable "principal_id" {
  description = "Principal id to which this role should be assigned."
}

variable "role_name" {
  type        = string
  default     = "Reader"
  description = "The role to assign"
}

//variable "custom_role_actions" {
////  default = ["Microsoft.Resources/subscriptions/resourceGroups/read"]
//  description = "Action to be assigned to role"
//}