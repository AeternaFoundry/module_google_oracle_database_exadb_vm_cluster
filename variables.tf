variable "oracle_database_exadb_vm_clusters" {
  description = <<EOT
Map of oracle_database_exadb_vm_clusters, attributes below
Required:
    - backup_odb_subnet
    - display_name
    - exadb_vm_cluster_id
    - location
    - odb_subnet
    - properties (block):
        - additional_ecpu_count_per_node (optional)
        - cluster_name (optional)
        - data_collection_options (optional, block):
            - is_diagnostics_events_enabled (optional)
            - is_health_monitoring_enabled (optional)
            - is_incident_logs_enabled (optional)
        - enabled_ecpu_count_per_node (required)
        - exascale_db_storage_vault (required)
        - grid_image_id (required)
        - hostname_prefix (required)
        - license_model (optional)
        - node_count (required)
        - scan_listener_port_tcp (optional)
        - shape_attribute (required)
        - ssh_public_keys (required)
        - time_zone (optional, block):
            - id (optional)
            - version (optional)
        - vm_file_system_storage (required, block):
            - size_in_gbs_per_node (required)
Optional:
    - deletion_policy
    - deletion_protection
    - labels
    - odb_network
    - project
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    backup_odb_subnet   = string
    display_name        = string
    exadb_vm_cluster_id = string
    location            = string
    odb_subnet          = string
    deletion_policy     = optional(string)
    deletion_protection = optional(bool)
    labels              = optional(map(string))
    odb_network         = optional(string)
    project             = optional(string)
    properties = object({
      additional_ecpu_count_per_node = optional(number)
      cluster_name                   = optional(string)
      data_collection_options = optional(object({
        is_diagnostics_events_enabled = optional(bool)
        is_health_monitoring_enabled  = optional(bool)
        is_incident_logs_enabled      = optional(bool)
      }))
      enabled_ecpu_count_per_node = number
      exascale_db_storage_vault   = string
      grid_image_id               = string
      hostname_prefix             = string
      license_model               = optional(string)
      node_count                  = number
      scan_listener_port_tcp      = optional(number)
      shape_attribute             = string
      ssh_public_keys             = list(string)
      time_zone = optional(object({
        id      = optional(string)
        version = optional(string)
      }))
      vm_file_system_storage = object({
        size_in_gbs_per_node = number
      })
    })
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

