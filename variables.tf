variable "enabled" {
  type        = string
  description = "Set to `false` to prevent the module from creating any resources"
  default     = "true"
}
variable "name" {
  description = "Resource name"
  type        = string
}

variable "tags" {
  default     = {}
  description = "A map of tags to add to all resources"
  type        = map(string)
}

variable "advanced_options" {
  default     = ""
  description = "es advanced options, cf https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/elasticsearch_domain#advanced_options"
  type        = string
}

variable "advanced_security_options" {
  default     = false
  description = "es advanced security options, cf https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/elasticsearch_domain#advanced_security_options"
  type        = bool
}

variable "automated_snapshot_start_hour" {
  default     = "2"
  description = "es snapshot options, automated snapshot start hour, cf https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/elasticsearch_domain#automated_snapshot_start_hour"
  type        = string
}

variable "availability_zone_count" {
  default     = "2"
  description = "es zone awareness, cf https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/elasticsearch_domain#availability_zone_count"
  type        = string
}

variable "cognito_options" {
  default     = false
  description = "es cognito options, cf https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/elasticsearch_domain#enabled"
  type        = bool
}

variable "cloudwatch_log_group_arn" {
  default     = ""
  description = "es log publishing options cloudwatch log group, cf https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/elasticsearch_domain#cloudwatch_log_group_arn"
  type        = string
}

variable "dedicated_master_enabled" {
  default     = false
  description = "es dedicated master, cf https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/elasticsearch_domain#dedicated_master_enabled"
  type        = bool
}

variable "dedicated_master_type" {
  default     = "m4.large.elasticsearch"
  description = "es dedicated master, cf https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/elasticsearch_domain#dedicated_master_type"
  type        = string
}

variable "domain_name" {
  description = "es domain name, cf https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/elasticsearch_domain#domain_name"
  type        = string
}

variable "ebs_enabled" {
  default     = true
  description = "es  ebs options enabled, cf https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/elasticsearch_domain#ebs_enabled"
  type        = bool
}

variable "enforce_https" {
  default     = true
  description = "es  domain endpoint options enforce https, cf https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/elasticsearch_domain#enforce_https"
  type        = bool
}

variable "iops" {
  default     = 0
  description = "es  ebs options iops, cf https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/elasticsearch_domain#iops"
  type        = number
}

variable "elasticsearch_version" {
  default     = "7.4"
  description = "es domain name, cf https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/elasticsearch_domain#elasticsearch_version"
  type        = string
}

variable "encrypt_at_rest" {
  default     = false
  description = "es encrypt at rest, cf https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/elasticsearch_domain#encrypt_at_rest"
  type        = bool
}

variable "identity_pool_id" {
  default     = ""
  description = "es cognito option identity pool id, cf https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/elasticsearch_domain#identity_pool_id"
  type        = string
}

variable "instance_count" {
  default     = "2"
  description = "es cluster config instance count, cf https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/elasticsearch_domain#instance_count"
  type        = string
}

variable "instance_type" {
  default     = "m4.large.elasticsearch"
  description = "es cluster config instance type, cf https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/elasticsearch_domain#instance_type"
  type        = string
}

variable "internal_user_database_enabled" {
  default     = false
  description = "es encrypt at rest, cf https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/elasticsearch_domain#internal_user_database_enabled"
  type        = bool
}

variable "log_type" {
  default     = "INDEX_SLOW_LOGS"
  description = "es domain name, cf https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/elasticsearch_domain#log_type"
  type        = string
}

variable "kms_key_id" {
  default     = ""
  description = "es encrypt at rest key, cf https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/elasticsearch_domain#kms_key_id"
  type        = string
}

variable "log_publishing_options" {
  default     = false
  description = "es log pub options, cf https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/elasticsearch_domain#log_publishing_options"
  type        = bool
}

variable "master_user_arn" {
  default     = ""
  description = "es advanced security options master user arn, cf https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/elasticsearch_domain#master_user_arn"
  type        = string
}

variable "master_user_name" {
  default     = ""
  description = "es advanced security options master user arn, cf https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/elasticsearch_domain#master_user_name"
  type        = string
}

variable "master_user_password" {
  default     = ""
  description = "es advanced security options master user arn, cf https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/elasticsearch_domain#master_user_password"
  type        = string
}

variable "node_to_node_encryption" {
  default     = false
  description = "es node to node encryption, cf https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/elasticsearch_domain#node_to_node_encryption"
  type        = bool
}

variable "role_arn" {
  default     = ""
  description = "es cognito option role arn, cf https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/elasticsearch_domain#role_arn"
  type        = string
}

variable "security_group_ids" {
  default     = []
  description = "es vpc option list of sg ids, cf https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/elasticsearch_domain#security_group_ids"
  type        = list(string)
}

variable "subnet_ids" {
  default     = []
  description = "es vpc option list of subnet ids, cf https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/elasticsearch_domain#subnet_ids"
  type        = list(string)
}

variable "tls_security_policy" {
  default     = "Policy-Min-TLS-1-2-2019-07"
  description = "es  domain endpoint options tls security policy, cf https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/elasticsearch_domain#tls_security_policy"
  type        = string
}

variable "user_pool_id" {
  default     = ""
  description = "es cognito option user pool id, cf https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/elasticsearch_domain#user_pool_id"
  type        = string
}

variable "volume_size" {
  default     = "100"
  description = "es ebs options volume size, cf https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/elasticsearch_domain#volume_size"
  type        = string
}

variable "volume_type" {
  default     = "gp2"
  description = "es ebs options volume type, cf https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/elasticsearch_domain#volume_type"
  type        = string
}

variable "warm_count" {
  default     = "2"
  description = "es enable warm storage, cf https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/elasticsearch_domain#warm_count"
  type        = string
}

variable "warm_enabled" {
  default     = false
  description = "es enable warm storage, cf https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/elasticsearch_domain#warm_enabled"
  type        = bool
}

variable "warm_type" {
  default     = "ultrawarm1.medium.elasticsearch"
  description = "es enable warm storage, cf https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/elasticsearch_domain#warm_type"
  type        = string
}

variable "zone_awareness_enabled" {
  default     = false
  description = "es zone awareness, cf https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/elasticsearch_domain#zone_awareness_enabled"
  type        = bool
}
