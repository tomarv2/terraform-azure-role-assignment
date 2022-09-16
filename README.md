<p align="center">
    <a href="https://github.com/tomarv2/terraform-azure-role-assignment/actions/workflows/pre-commit.yml" alt="Pre Commit">
        <img src="https://github.com/tomarv2/terraform-azure-role-assignment/actions/workflows/pre-commit.yml/badge.svg?branch=main" /></a>
    <a href="https://www.apache.org/licenses/LICENSE-2.0" alt="license">
        <img src="https://img.shields.io/github/license/tomarv2/terraform-azure-role-assignment" /></a>
    <a href="https://github.com/tomarv2/terraform-azure-role-assignment/tags" alt="GitHub tag">
        <img src="https://img.shields.io/github/v/tag/tomarv2/terraform-azure-role-assignment" /></a>
    <a href="https://github.com/tomarv2/terraform-azure-role-assignment/pulse" alt="Activity">
        <img src="https://img.shields.io/github/commit-activity/m/tomarv2/terraform-azure-role-assignment" /></a>
    <a href="https://stackoverflow.com/users/6679867/tomarv2" alt="Stack Exchange reputation">
        <img src="https://img.shields.io/stackexchange/stackoverflow/r/6679867"></a>
    <a href="https://twitter.com/intent/follow?screen_name=varuntomar2019" alt="follow on Twitter">
        <img src="https://img.shields.io/twitter/follow/varuntomar2019?style=social&logo=twitter"></a>
</p>

## Terraform module for Azure Role Assignment

### Versions

- Module tested for Terraform 1.0.1.
- Azure provider version [3.21.1](https://registry.terraform.io/providers/hashicorp/azurerm/latest)
- `main` branch: Provider versions not pinned to keep up with Terraform releases
- `tags` releases: Tags are pinned with versions (use <a href="https://github.com/tomarv2/terraform-azure-role-assignment/tags" alt="GitHub tag">
        <img src="https://img.shields.io/github/v/tag/tomarv2/terraform-azure-role-assignment" /></a> in your releases)

### Usage

#### Option 1:

```
terrafrom init
terraform plan -var='teamid=tryme' -var='prjid=project'
terraform apply -var='teamid=tryme' -var='prjid=project'
terraform destroy -var='teamid=tryme' -var='prjid=project'
```
**Note:** With this option please take care of remote state storage

#### Option 2:

#### Recommended method (stores remote state in storage using `prjid` and `teamid` to create directory structure):

- Create python 3.8+ virtual environment
```
python3 -m venv <venv name>
```

- Install package:
```
pip install tfremote --upgrade
```

- Set below environment variables:
```
export TF_AZURE_STORAGE_ACCOUNT=tfstatexxxxx # Output of remote_state.sh
export TF_AZURE_CONTAINER=tfstate # Output of remote_state.sh
export ARM_ACCESS_KEY=xxxxxxxxxx # Output of remote_state.sh
```

- Updated `examples` directory to required values

- Run and verify the output before deploying:
```
tf -c=azure plan -var='teamid=foo' -var='prjid=bar'
```

- Run below to deploy:
```
tf -c=azure apply -var='teamid=foo' -var='prjid=bar'
```

- Run below to destroy:
```
tf -c=azure destroy -var='teamid=foo' -var='prjid=bar'
```
**Note:** Read more on [tfremote](https://github.com/tomarv2/tfremote)
#### Role Assignment
```
module "role_assignment" {
  source = "../"


  principal_id    = "principal_id"
  scopes          = "scopes"
  #-----------------------------------------------
  # Note: Do not change teamid and prjid once set.
  teamid = var.teamid
  prjid  = var.prjid
}
```

Please refer to examples directory [link](examples) for references.

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.1 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | ~> 3.21.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | ~> 3.21.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_role_assignment.role](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/role_assignment) | resource |
| [azurerm_subscription.primary](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/subscription) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_principal_id"></a> [principal\_id](#input\_principal\_id) | Principal id to which this role should be assigned | `string` | n/a | yes |
| <a name="input_role_name"></a> [role\_name](#input\_role\_name) | The role to assign | `string` | `"Reader"` | no |
| <a name="input_scopes"></a> [scopes](#input\_scopes) | A list of scopes the role assignment applies | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_principal_type"></a> [principal\_type](#output\_principal\_type) | Principal type |
| <a name="output_role_definition_id"></a> [role\_definition\_id](#output\_role\_definition\_id) | Role definition Id |
| <a name="output_role_id"></a> [role\_id](#output\_role\_id) | Id of the role created |
| <a name="output_role_principal_id"></a> [role\_principal\_id](#output\_role\_principal\_id) | Principal id to which this role should be assigned |
| <a name="output_role_scope"></a> [role\_scope](#output\_role\_scope) | A list of scopes the role assignment applies |
<!-- END_TF_DOCS -->
