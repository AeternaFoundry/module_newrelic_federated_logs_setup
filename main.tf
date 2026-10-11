resource "newrelic_federated_logs_setup" "federated_logs_setups" {
  for_each = var.federated_logs_setups

  name        = each.value.name
  account_id  = each.value.account_id
  active      = each.value.active
  description = each.value.description

  default_partition {
    dynamic "data_retention_policy" {
      for_each = each.value.default_partition.data_retention_policy != null ? [each.value.default_partition.data_retention_policy] : []
      content {
        duration = data_retention_policy.value.duration
        unit     = data_retention_policy.value.unit
      }
    }
    storage {
      data_location_uri = each.value.default_partition.storage.data_location_uri
      table             = each.value.default_partition.storage.table
    }
  }

  storage {
    cloud_provider_configuration {
      provider = each.value.storage.cloud_provider_configuration.provider
      region   = each.value.storage.cloud_provider_configuration.region
    }
    data_ingest_connection_id = each.value.storage.data_ingest_connection_id
    data_location_bucket      = each.value.storage.data_location_bucket
    database                  = each.value.storage.database
    query_connection_id       = each.value.storage.query_connection_id
  }

  dynamic "forwarder" {
    for_each = each.value.forwarder != null ? [each.value.forwarder] : []
    content {
      dynamic "pipeline_control" {
        for_each = forwarder.value.pipeline_control != null ? [forwarder.value.pipeline_control] : []
        content {
          fleet_id = pipeline_control.value.fleet_id
          dynamic "routing_rule" {
            for_each = pipeline_control.value.routing_rule != null ? [pipeline_control.value.routing_rule] : []
            content {
              expression = routing_rule.value.expression
            }
          }
        }
      }
      type = forwarder.value.type
    }
  }
}

