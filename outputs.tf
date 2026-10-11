output "oracle_database_exadb_vm_clusters_id" {
  description = "Map of id values across all oracle_database_exadb_vm_clusters, keyed the same as var.oracle_database_exadb_vm_clusters except keys with no id are omitted"
  value       = { for k, v in google_oracle_database_exadb_vm_cluster.oracle_database_exadb_vm_clusters : k => v.id if v.id != null && length(v.id) > 0 }
}
output "oracle_database_exadb_vm_clusters_backup_odb_subnet" {
  description = "Map of backup_odb_subnet values across all oracle_database_exadb_vm_clusters, keyed the same as var.oracle_database_exadb_vm_clusters except keys with no backup_odb_subnet are omitted"
  value       = { for k, v in google_oracle_database_exadb_vm_cluster.oracle_database_exadb_vm_clusters : k => v.backup_odb_subnet if v.backup_odb_subnet != null && length(v.backup_odb_subnet) > 0 }
}
output "oracle_database_exadb_vm_clusters_create_time" {
  description = "Map of create_time values across all oracle_database_exadb_vm_clusters, keyed the same as var.oracle_database_exadb_vm_clusters except keys with no create_time are omitted"
  value       = { for k, v in google_oracle_database_exadb_vm_cluster.oracle_database_exadb_vm_clusters : k => v.create_time if v.create_time != null && length(v.create_time) > 0 }
}
output "oracle_database_exadb_vm_clusters_deletion_policy" {
  description = "Map of deletion_policy values across all oracle_database_exadb_vm_clusters, keyed the same as var.oracle_database_exadb_vm_clusters except keys with no deletion_policy are omitted"
  value       = { for k, v in google_oracle_database_exadb_vm_cluster.oracle_database_exadb_vm_clusters : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "oracle_database_exadb_vm_clusters_deletion_protection" {
  description = "Map of deletion_protection values across all oracle_database_exadb_vm_clusters, keyed the same as var.oracle_database_exadb_vm_clusters except keys with no deletion_protection are omitted"
  value       = { for k, v in google_oracle_database_exadb_vm_cluster.oracle_database_exadb_vm_clusters : k => v.deletion_protection if v.deletion_protection != null }
}
output "oracle_database_exadb_vm_clusters_display_name" {
  description = "Map of display_name values across all oracle_database_exadb_vm_clusters, keyed the same as var.oracle_database_exadb_vm_clusters except keys with no display_name are omitted"
  value       = { for k, v in google_oracle_database_exadb_vm_cluster.oracle_database_exadb_vm_clusters : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "oracle_database_exadb_vm_clusters_effective_labels" {
  description = "Map of effective_labels values across all oracle_database_exadb_vm_clusters, keyed the same as var.oracle_database_exadb_vm_clusters except keys with no effective_labels are omitted"
  value       = { for k, v in google_oracle_database_exadb_vm_cluster.oracle_database_exadb_vm_clusters : k => v.effective_labels if v.effective_labels != null && length(v.effective_labels) > 0 }
}
output "oracle_database_exadb_vm_clusters_entitlement_id" {
  description = "Map of entitlement_id values across all oracle_database_exadb_vm_clusters, keyed the same as var.oracle_database_exadb_vm_clusters except keys with no entitlement_id are omitted"
  value       = { for k, v in google_oracle_database_exadb_vm_cluster.oracle_database_exadb_vm_clusters : k => v.entitlement_id if v.entitlement_id != null && length(v.entitlement_id) > 0 }
}
output "oracle_database_exadb_vm_clusters_exadb_vm_cluster_id" {
  description = "Map of exadb_vm_cluster_id values across all oracle_database_exadb_vm_clusters, keyed the same as var.oracle_database_exadb_vm_clusters except keys with no exadb_vm_cluster_id are omitted"
  value       = { for k, v in google_oracle_database_exadb_vm_cluster.oracle_database_exadb_vm_clusters : k => v.exadb_vm_cluster_id if v.exadb_vm_cluster_id != null && length(v.exadb_vm_cluster_id) > 0 }
}
output "oracle_database_exadb_vm_clusters_gcp_oracle_zone" {
  description = "Map of gcp_oracle_zone values across all oracle_database_exadb_vm_clusters, keyed the same as var.oracle_database_exadb_vm_clusters except keys with no gcp_oracle_zone are omitted"
  value       = { for k, v in google_oracle_database_exadb_vm_cluster.oracle_database_exadb_vm_clusters : k => v.gcp_oracle_zone if v.gcp_oracle_zone != null && length(v.gcp_oracle_zone) > 0 }
}
output "oracle_database_exadb_vm_clusters_identity_connector" {
  description = "Map of identity_connector values across all oracle_database_exadb_vm_clusters, keyed the same as var.oracle_database_exadb_vm_clusters except keys with no identity_connector are omitted"
  value       = { for k, v in google_oracle_database_exadb_vm_cluster.oracle_database_exadb_vm_clusters : k => v.identity_connector if v.identity_connector != null && length(v.identity_connector) > 0 }
}
output "oracle_database_exadb_vm_clusters_labels" {
  description = "Map of labels values across all oracle_database_exadb_vm_clusters, keyed the same as var.oracle_database_exadb_vm_clusters except keys with no labels are omitted"
  value       = { for k, v in google_oracle_database_exadb_vm_cluster.oracle_database_exadb_vm_clusters : k => v.labels if v.labels != null && length(v.labels) > 0 }
}
output "oracle_database_exadb_vm_clusters_location" {
  description = "Map of location values across all oracle_database_exadb_vm_clusters, keyed the same as var.oracle_database_exadb_vm_clusters except keys with no location are omitted"
  value       = { for k, v in google_oracle_database_exadb_vm_cluster.oracle_database_exadb_vm_clusters : k => v.location if v.location != null && length(v.location) > 0 }
}
output "oracle_database_exadb_vm_clusters_name" {
  description = "Map of name values across all oracle_database_exadb_vm_clusters, keyed the same as var.oracle_database_exadb_vm_clusters except keys with no name are omitted"
  value       = { for k, v in google_oracle_database_exadb_vm_cluster.oracle_database_exadb_vm_clusters : k => v.name if v.name != null && length(v.name) > 0 }
}
output "oracle_database_exadb_vm_clusters_odb_network" {
  description = "Map of odb_network values across all oracle_database_exadb_vm_clusters, keyed the same as var.oracle_database_exadb_vm_clusters except keys with no odb_network are omitted"
  value       = { for k, v in google_oracle_database_exadb_vm_cluster.oracle_database_exadb_vm_clusters : k => v.odb_network if v.odb_network != null && length(v.odb_network) > 0 }
}
output "oracle_database_exadb_vm_clusters_odb_subnet" {
  description = "Map of odb_subnet values across all oracle_database_exadb_vm_clusters, keyed the same as var.oracle_database_exadb_vm_clusters except keys with no odb_subnet are omitted"
  value       = { for k, v in google_oracle_database_exadb_vm_cluster.oracle_database_exadb_vm_clusters : k => v.odb_subnet if v.odb_subnet != null && length(v.odb_subnet) > 0 }
}
output "oracle_database_exadb_vm_clusters_project" {
  description = "Map of project values across all oracle_database_exadb_vm_clusters, keyed the same as var.oracle_database_exadb_vm_clusters except keys with no project are omitted"
  value       = { for k, v in google_oracle_database_exadb_vm_cluster.oracle_database_exadb_vm_clusters : k => v.project if v.project != null && length(v.project) > 0 }
}
output "oracle_database_exadb_vm_clusters_properties" {
  description = "Map of properties values across all oracle_database_exadb_vm_clusters, keyed the same as var.oracle_database_exadb_vm_clusters except keys with no properties are omitted"
  value       = { for k, v in google_oracle_database_exadb_vm_cluster.oracle_database_exadb_vm_clusters : k => one(v.properties) if v.properties != null && length(v.properties) > 0 }
}
output "oracle_database_exadb_vm_clusters_terraform_labels" {
  description = "Map of terraform_labels values across all oracle_database_exadb_vm_clusters, keyed the same as var.oracle_database_exadb_vm_clusters except keys with no terraform_labels are omitted"
  value       = { for k, v in google_oracle_database_exadb_vm_cluster.oracle_database_exadb_vm_clusters : k => v.terraform_labels if v.terraform_labels != null && length(v.terraform_labels) > 0 }
}

