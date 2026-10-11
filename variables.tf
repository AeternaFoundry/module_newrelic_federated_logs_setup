variable "federated_logs_setups" {
  description = <<EOT
Map of federated_logs_setups, attributes below
Required:
    - name
    - default_partition (block):
        - data_retention_policy (optional, block):
            - duration (required)
            - unit (required)
        - storage (required, block):
            - data_location_uri (required)
            - table (required)
    - storage (block):
        - cloud_provider_configuration (required, block):
            - provider (required)
            - region (required)
        - data_ingest_connection_id (required)
        - data_location_bucket (required)
        - database (required)
        - query_connection_id (required)
Optional:
    - account_id
    - active
    - description
    - forwarder (block):
        - pipeline_control (optional, block):
            - fleet_id (required)
            - routing_rule (optional, block):
                - expression (required)
        - type (required)
EOT

  type = map(object({
    name        = string
    account_id  = optional(number)
    active      = optional(bool)
    description = optional(string)
    default_partition = object({
      data_retention_policy = optional(object({
        duration = number
        unit     = string
      }))
      storage = object({
        data_location_uri = string
        table             = string
      })
    })
    storage = object({
      cloud_provider_configuration = object({
        provider = string
        region   = string
      })
      data_ingest_connection_id = string
      data_location_bucket      = string
      database                  = string
      query_connection_id       = string
    })
    forwarder = optional(object({
      pipeline_control = optional(object({
        fleet_id = string
        routing_rule = optional(object({
          expression = string
        }))
      }))
      type = string
    }))
  }))
  # Note: 3 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

