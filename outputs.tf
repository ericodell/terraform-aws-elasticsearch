output "arn" {
  value = join("", aws_elasticsearch_domain.this.*.arn)
}

output "domain_id" {
  value = join("", aws_elasticsearch_domain.this.*.domain_id)
}

output "domain_name" {
  value = join("", aws_elasticsearch_domain.this.*.domain_name)
}

output "endpoint" {
  value = join("", aws_elasticsearch_domain.this.*.endpoint)
}

output "kibana_endpoint" {
  value = join("", aws_elasticsearch_domain.this.*.kibana_endpoint)
}
