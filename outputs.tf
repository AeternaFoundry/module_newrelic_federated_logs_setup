output "federated_logs_setups_id" {
  description = "Map of id values across all federated_logs_setups, keyed the same as var.federated_logs_setups"
  value       = { for k, v in newrelic_federated_logs_setup.federated_logs_setups : k => v.id }
}
output "federated_logs_setups_account_id" {
  description = "Map of account_id values across all federated_logs_setups, keyed the same as var.federated_logs_setups"
  value       = { for k, v in newrelic_federated_logs_setup.federated_logs_setups : k => v.account_id }
}
output "federated_logs_setups_active" {
  description = "Map of active values across all federated_logs_setups, keyed the same as var.federated_logs_setups"
  value       = { for k, v in newrelic_federated_logs_setup.federated_logs_setups : k => v.active }
}
output "federated_logs_setups_created_at" {
  description = "Map of created_at values across all federated_logs_setups, keyed the same as var.federated_logs_setups"
  value       = { for k, v in newrelic_federated_logs_setup.federated_logs_setups : k => v.created_at }
}
output "federated_logs_setups_default_partition" {
  description = "Map of default_partition values across all federated_logs_setups, keyed the same as var.federated_logs_setups"
  value       = { for k, v in newrelic_federated_logs_setup.federated_logs_setups : k => one(v.default_partition) }
}
output "federated_logs_setups_default_partition_id" {
  description = "Map of default_partition_id values across all federated_logs_setups, keyed the same as var.federated_logs_setups"
  value       = { for k, v in newrelic_federated_logs_setup.federated_logs_setups : k => v.default_partition_id }
}
output "federated_logs_setups_description" {
  description = "Map of description values across all federated_logs_setups, keyed the same as var.federated_logs_setups"
  value       = { for k, v in newrelic_federated_logs_setup.federated_logs_setups : k => v.description }
}
output "federated_logs_setups_forwarder" {
  description = "Map of forwarder values across all federated_logs_setups, keyed the same as var.federated_logs_setups"
  value       = { for k, v in newrelic_federated_logs_setup.federated_logs_setups : k => one(v.forwarder) }
}
output "federated_logs_setups_health_check" {
  description = "Map of health_check values across all federated_logs_setups, keyed the same as var.federated_logs_setups"
  value       = { for k, v in newrelic_federated_logs_setup.federated_logs_setups : k => v.health_check }
}
output "federated_logs_setups_lifecycle_status" {
  description = "Map of lifecycle_status values across all federated_logs_setups, keyed the same as var.federated_logs_setups"
  value       = { for k, v in newrelic_federated_logs_setup.federated_logs_setups : k => v.lifecycle_status }
}
output "federated_logs_setups_name" {
  description = "Map of name values across all federated_logs_setups, keyed the same as var.federated_logs_setups"
  value       = { for k, v in newrelic_federated_logs_setup.federated_logs_setups : k => v.name }
}
output "federated_logs_setups_storage" {
  description = "Map of storage values across all federated_logs_setups, keyed the same as var.federated_logs_setups"
  value       = { for k, v in newrelic_federated_logs_setup.federated_logs_setups : k => one(v.storage) }
}
output "federated_logs_setups_updated_at" {
  description = "Map of updated_at values across all federated_logs_setups, keyed the same as var.federated_logs_setups"
  value       = { for k, v in newrelic_federated_logs_setup.federated_logs_setups : k => v.updated_at }
}

