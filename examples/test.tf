module "role_assignment" {
  source = "../"


  principal_id = "principal_id"
  scopes       = "scopes"
  #----------------------------------------------
  # Note: Do not change teamid and prjid once set.
  teamid = var.teamid
  prjid  = var.prjid
}
