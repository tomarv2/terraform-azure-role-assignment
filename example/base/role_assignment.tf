module "role_assignment" {
  source = "../.."

  email                                   = var.email
  teamid                                  = var.teamid
  prjid                                   = var.prjid
  client_id                               = var.client_id
  client_secret                           = var.client_secret
  subscription_id                         = var.subscription_id
  tenant_id                               = var.tenant_id
  principal_id                            = var.principal_id
  scopes                                  = var.scopes
}
