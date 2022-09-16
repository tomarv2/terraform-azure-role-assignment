terraform {
  required_version = ">= 1.0.1"
  required_providers {
    azurerm = {
      version = "~> 3.21.1"
    }
  }
}

provider "azurerm" {
  features {}
}

module "role_assignment" {
  source = "../"

  principal_id = var.principal_id
  scopes       = var.scopes
}
