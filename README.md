# terraform aws elasticsearch module

this module creates AWS elasticsearch domains

## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| aws | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| advanced\_options | [es advanced options](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/elasticsearch_domain#advanced_options) | `string` | `""` | no |
| advanced\_security\_options | [es advanced security options](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/elasticsearch_domain#advanced_security_options) | `bool` | `false` | no |
| automated\_snapshot\_start\_hour | [es snapshot options, automated snapshot start hour](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/elasticsearch_domain#automated_snapshot_start_hour) | `string` | `"2"` | no |
| availability\_zone\_count | [es availability zone count](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/elasticsearch_domain#availability_zone_count) | `string` | `"2"` | no |
| cloudwatch\_log\_group\_arn | [es log publishing options cloudwatch log group](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/elasticsearch_domain#cloudwatch_log_group_arn) | `string` | `""` | no |
| cognito\_options | [es cognito options](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/elasticsearch_domain#enabled) | `bool` | `false` | no |
| dedicated\_master\_enabled | [es dedicated master](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/elasticsearch_domain#dedicated_master_enabled) | `bool` | `false` | no |
| dedicated\_master\_type | [es dedicated master](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/elasticsearch_domain#dedicated_master_type) | `string` | `"m5.large.elasticsearch"` | no |
| domain\_name | [es domain name](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/elasticsearch_domain#domain_name) | `string` | n/a | yes |
| ebs\_enabled | [es  ebs options enabled](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/elasticsearch_domain#ebs_enabled) | `bool` | `true` | no |
| elasticsearch\_version | [es domain name](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/elasticsearch_domain#elasticsearch_version) | `string` | `"7.4"` | no |
| enabled | Set to `false` to prevent the module from creating any resources | `bool` | `true` | no |
| encrypt\_at\_rest | [es encrypt at rest](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/elasticsearch_domain#encrypt_at_rest) | `bool` | `false` | no |
| enforce\_https | [es  domain endpoint options enforce https](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/elasticsearch_domain#enforce_https) | `bool` | `true` | no |
| identity\_pool\_id | [es cognito option identity pool id](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/elasticsearch_domain#identity_pool_id) | `string` | `""` | no |
| instance\_count | [es cluster config instance count](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/elasticsearch_domain#instance_count) | `string` | `"2"` | no |
| instance\_type | [es cluster config instance type](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/elasticsearch_domain#instance_type) | `string` | `"m5.large.elasticsearch"` | no |
| internal\_user\_database\_enabled | [es internal db users](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/elasticsearch_domain#internal_user_database_enabled) | `bool` | `false` | no |
| iops | [es  ebs options iops](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/elasticsearch_domain#iops) | `number` | `0` | no |
| kms\_key\_id | [es encrypt at rest key](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/elasticsearch_domain#kms_key_id) | `string` | `""` | no |
| log\_publishing\_options\_es\_application\_logs | [es log pub options](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/elasticsearch_domain#log_publishing_options) | `bool` | `false` | no |
| log\_publishing\_options\_es\_application\_logs\_cloudwatch\_logs\_group\_arn | [es log pub options](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/elasticsearch_domain#log_publishing_options) | `string` | `""` | no |
| log\_publishing\_options\_index\_slow\_logs | [es log pub options](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/elasticsearch_domain#log_publishing_options) | `bool` | `false` | no |
| log\_publishing\_options\_index\_slow\_logs\_cloudwatch\_logs\_group\_arn | [es log pub options](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/elasticsearch_domain#log_publishing_options) | `string` | `""` | no |
| log\_publishing\_options\_search\_slow\_logs | [es log pub options](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/elasticsearch_domain#log_publishing_options) | `bool` | `false` | no |
| log\_publishing\_options\_search\_slow\_logs\_logs\_group\_arn | [es log pub options](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/elasticsearch_domain#log_publishing_options) | `string` | `""` | no |
| log\_type | [es log type](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/elasticsearch_domain#log_type) | `string` | `"INDEX_SLOW_LOGS"` | no |
| master\_user\_arn | [es advanced security options master user arn](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/elasticsearch_domain#master_user_arn) | `string` | `""` | no |
| master\_user\_name | [es advanced security options master user arn](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/elasticsearch_domain#master_user_name) | `string` | `""` | no |
| master\_user\_password | [es advanced security options master user arn](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/elasticsearch_domain#master_user_password) | `string` | `""` | no |
| name | Resource name | `string` | n/a | yes |
| node\_to\_node\_encryption | [es node to node encryption](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/elasticsearch_domain#node_to_node_encryption) | `bool` | `false` | no |
| role\_arn | [es cognito option role arn](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/elasticsearch_domain#role_arn) | `string` | `""` | no |
| security\_group\_ids | [es vpc option list of sg ids](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/elasticsearch_domain#security_group_ids) | `list(string)` | `[]` | no |
| service\_role\_enabled | enable es service role | `bool` | `true` | no |
| subnet\_ids | [es vpc option list of subnet ids](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/elasticsearch_domain#subnet_ids) | `list(string)` | `[]` | no |
| tags | A map of tags to add to all resources | `map(string)` | `{}` | no |
| tls\_security\_policy | [es  domain endpoint options tls security policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/elasticsearch_domain#tls_security_policy) | `string` | `"Policy-Min-TLS-1-2-2019-07]"` | no |
| user\_pool\_id | [es cognito option user pool id](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/elasticsearch_domain#user_pool_id) | `string` | `"]"` | no |
| volume\_size | [es ebs options volume size](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/elasticsearch_domain#volume_size) | `string` | `"100]"` | no |
| volume\_type | [es ebs options volume type](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/elasticsearch_domain#volume_type) | `string` | `"gp2]"` | no |
| warm\_count | [es enable warm storage](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/elasticsearch_domain#warm_count) | `string` | `null` | no |
| warm\_enabled | [es enable warm storage](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/elasticsearch_domain#warm_enabled) | `bool` | `false` | no |
| warm\_type | [es enable warm storage](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/elasticsearch_domain#warm_type) | `string` | `null` | no |
| zone\_awareness\_enabled | [es zone awareness](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/elasticsearch_domain#zone_awareness_enabled) | `bool` | `false` | no |

## Outputs

| Name | Description |
|------|-------------|
| arn | n/a |
| domain\_id | n/a |
| domain\_name | n/a |
| endpoint | n/a |
| kibana\_endpoint | n/a |
