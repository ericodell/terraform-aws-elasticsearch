output "arn" {
  description = "elastic search domain arn"
  value       = join("", aws_elasticsearch_domain.this.*.arn)
}

output "domain_id" {
  description = "elastic search domain id"
  value       = join("", aws_elasticsearch_domain.this.*.domain_id)
}

output "domain_name" {
  description = "elastic search domain name"
  value       = join("", aws_elasticsearch_domain.this.*.domain_name)
}

output "endpoint" {
  description = "elastic search domain endpoint"
  value       = join("", aws_elasticsearch_domain.this.*.endpoint)
}

output "kibana_endpoint" {
  description = "elastic search domain kibana plugin endpoint"
  value       = join("", aws_elasticsearch_domain.this.*.kibana_endpoint)
}
