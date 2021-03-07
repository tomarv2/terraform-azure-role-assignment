module "role_assignment" {
  source = "../"

  client_id       = var.client_id
  client_secret   = var.client_secret
  subscription_id = var.subscription_id
  tenant_id       = var.tenant_id
  email           = "demo@demo.com"
  principal_id    = "principal_id"
  scopes          = "scopes"
  #-------------------------------------------------------------------
  # Note: Do not change teamid and prjid once set.
  teamid = var.teamid
  prjid  = var.prjid
}