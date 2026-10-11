output "federated_logs_setups_id" {
  description = "Map of id values across all federated_logs_setups, keyed the same as var.federated_logs_setups except keys with no id are omitted"
  value       = { for k, v in newrelic_federated_logs_setup.federated_logs_setups : k => v.id if v.id != null && length(v.id) > 0 }
}
output "federated_logs_setups_account_id" {
  description = "Map of account_id values across all federated_logs_setups, keyed the same as var.federated_logs_setups except keys with no account_id are omitted"
  value       = { for k, v in newrelic_federated_logs_setup.federated_logs_setups : k => v.account_id if v.account_id != null }
}
output "federated_logs_setups_active" {
  description = "Map of active values across all federated_logs_setups, keyed the same as var.federated_logs_setups except keys with no active are omitted"
  value       = { for k, v in newrelic_federated_logs_setup.federated_logs_setups : k => v.active if v.active != null }
}
output "federated_logs_setups_created_at" {
  description = "Map of created_at values across all federated_logs_setups, keyed the same as var.federated_logs_setups except keys with no created_at are omitted"
  value       = { for k, v in newrelic_federated_logs_setup.federated_logs_setups : k => v.created_at if v.created_at != null && length(v.created_at) > 0 }
}
output "federated_logs_setups_default_partition" {
  description = "Map of default_partition values across all federated_logs_setups, keyed the same as var.federated_logs_setups except keys with no default_partition are omitted"
  value       = { for k, v in newrelic_federated_logs_setup.federated_logs_setups : k => one(v.default_partition) if v.default_partition != null && length(v.default_partition) > 0 }
}
output "federated_logs_setups_default_partition_id" {
  description = "Map of default_partition_id values across all federated_logs_setups, keyed the same as var.federated_logs_setups except keys with no default_partition_id are omitted"
  value       = { for k, v in newrelic_federated_logs_setup.federated_logs_setups : k => v.default_partition_id if v.default_partition_id != null && length(v.default_partition_id) > 0 }
}
output "federated_logs_setups_description" {
  description = "Map of description values across all federated_logs_setups, keyed the same as var.federated_logs_setups except keys with no description are omitted"
  value       = { for k, v in newrelic_federated_logs_setup.federated_logs_setups : k => v.description if v.description != null && length(v.description) > 0 }
}
output "federated_logs_setups_forwarder" {
  description = "Map of forwarder values across all federated_logs_setups, keyed the same as var.federated_logs_setups except keys with no forwarder are omitted"
  value       = { for k, v in newrelic_federated_logs_setup.federated_logs_setups : k => one(v.forwarder) if v.forwarder != null && length(v.forwarder) > 0 }
}
output "federated_logs_setups_health_check" {
  description = "Map of health_check values across all federated_logs_setups, keyed the same as var.federated_logs_setups except keys with no health_check are omitted"
  value       = { for k, v in newrelic_federated_logs_setup.federated_logs_setups : k => v.health_check if v.health_check != null && length(v.health_check) > 0 }
}
output "federated_logs_setups_lifecycle_status" {
  description = "Map of lifecycle_status values across all federated_logs_setups, keyed the same as var.federated_logs_setups except keys with no lifecycle_status are omitted"
  value       = { for k, v in newrelic_federated_logs_setup.federated_logs_setups : k => v.lifecycle_status if v.lifecycle_status != null && length(v.lifecycle_status) > 0 }
}
output "federated_logs_setups_name" {
  description = "Map of name values across all federated_logs_setups, keyed the same as var.federated_logs_setups except keys with no name are omitted"
  value       = { for k, v in newrelic_federated_logs_setup.federated_logs_setups : k => v.name if v.name != null && length(v.name) > 0 }
}
output "federated_logs_setups_storage" {
  description = "Map of storage values across all federated_logs_setups, keyed the same as var.federated_logs_setups except keys with no storage are omitted"
  value       = { for k, v in newrelic_federated_logs_setup.federated_logs_setups : k => one(v.storage) if v.storage != null && length(v.storage) > 0 }
}
output "federated_logs_setups_updated_at" {
  description = "Map of updated_at values across all federated_logs_setups, keyed the same as var.federated_logs_setups except keys with no updated_at are omitted"
  value       = { for k, v in newrelic_federated_logs_setup.federated_logs_setups : k => v.updated_at if v.updated_at != null && length(v.updated_at) > 0 }
}

