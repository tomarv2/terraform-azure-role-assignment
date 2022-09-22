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

data "azurerm_subscription" "primary" {}

locals {
  role_definition_names = {
    "<storage_account_id>" = {
      role_definition_name = "Storage Queue Data Contributor"
      principal_id         = "<msi_principal_id>"
    },
    (data.azurerm_subscription.primary.id) = {
      role_definition_name = "Contributor"
    }
  }
}

module "role_assignment" {
  source = "../"

  for_each = local.role_definition_names

  roles_config = {
    "demo_role" = {
      scope                = each.key
      principal_id         = "<msi_principal_id>"
      role_definition_name = each.value.role_definition_name
      description          = try(each.value.description, "Sample role")
    }
  }

}

