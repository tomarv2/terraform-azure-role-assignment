variable "teamid" {
  description = "Name of the team/group e.g. devops, dataengineering. Should not be changed after running 'tf apply'"
}

variable "prjid" {
  description = "Name of the project/stack e.g: mystack, nifieks, demoaci. Should not be changed after running 'tf apply'"
}



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
