## role assignment module usage:

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| client\_id | n/a | `any` | n/a | yes |
| client\_secret | n/a | `any` | n/a | yes |
| email | email address to be used for tagging (suggestion: use group email address) | `any` | n/a | yes |
| end\_date | The relative duration or RFC3339 date after which the password expire. | `string` | `null` | no |
| password | A password for the service principal. | `string` | `""` | no |
| principal\_id | Principal id to which this role should be assigned. | `any` | n/a | yes |
| prjid | (Required) Name of the project/stack e.g: mystack, nifieks, demoaci. Should not be changed after running 'tf apply' | `any` | n/a | yes |
| role\_name | The role to assign | `string` | `"Reader"` | no |
| scopes | A list of scopes the role assignment applies to. | `any` | n/a | yes |
| subscription\_id | n/a | `any` | n/a | yes |
| teamid | (Required) Name of the team/group e.g. devops, dataengineering. Should not be changed after running 'tf apply' | `any` | n/a | yes |
| tenant\_id | n/a | `any` | n/a | yes |
| years | The number of years after which the password expire. Either this or `end_date` should be specified, but not both. | `number` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| principal\_type | n/a |
| role\_id | n/a |
| role\_scope | n/a |

