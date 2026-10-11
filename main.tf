resource "google_oracle_database_exadb_vm_cluster" "oracle_database_exadb_vm_clusters" {
  for_each = var.oracle_database_exadb_vm_clusters

  backup_odb_subnet   = each.value.backup_odb_subnet
  display_name        = each.value.display_name
  exadb_vm_cluster_id = each.value.exadb_vm_cluster_id
  location            = each.value.location
  odb_subnet          = each.value.odb_subnet
  deletion_policy     = each.value.deletion_policy
  deletion_protection = each.value.deletion_protection
  labels              = each.value.labels
  odb_network         = each.value.odb_network
  project             = each.value.project

  properties {
    additional_ecpu_count_per_node = each.value.properties.additional_ecpu_count_per_node
    cluster_name                   = each.value.properties.cluster_name
    dynamic "data_collection_options" {
      for_each = each.value.properties.data_collection_options != null ? [each.value.properties.data_collection_options] : []
      content {
        is_diagnostics_events_enabled = data_collection_options.value.is_diagnostics_events_enabled
        is_health_monitoring_enabled  = data_collection_options.value.is_health_monitoring_enabled
        is_incident_logs_enabled      = data_collection_options.value.is_incident_logs_enabled
      }
    }
    enabled_ecpu_count_per_node = each.value.properties.enabled_ecpu_count_per_node
    exascale_db_storage_vault   = each.value.properties.exascale_db_storage_vault
    grid_image_id               = each.value.properties.grid_image_id
    hostname_prefix             = each.value.properties.hostname_prefix
    license_model               = each.value.properties.license_model
    node_count                  = each.value.properties.node_count
    scan_listener_port_tcp      = each.value.properties.scan_listener_port_tcp
    shape_attribute             = each.value.properties.shape_attribute
    ssh_public_keys             = each.value.properties.ssh_public_keys
    dynamic "time_zone" {
      for_each = each.value.properties.time_zone != null ? [each.value.properties.time_zone] : []
      content {
        id      = time_zone.value.id
        version = time_zone.value.version
      }
    }
    vm_file_system_storage {
      size_in_gbs_per_node = each.value.properties.vm_file_system_storage.size_in_gbs_per_node
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

