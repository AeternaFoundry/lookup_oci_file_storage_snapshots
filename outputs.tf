output "file_storage_snapshots_lookup_id" {
  description = "Map of id values across all file_storage_snapshots_lookup, keyed the same as var.file_storage_snapshots_lookup except keys with no id are omitted"
  value       = { for k, v in data.oci_file_storage_snapshots.file_storage_snapshots_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "file_storage_snapshots_lookup_compartment_id" {
  description = "Map of compartment_id values across all file_storage_snapshots_lookup, keyed the same as var.file_storage_snapshots_lookup except keys with no compartment_id are omitted"
  value       = { for k, v in data.oci_file_storage_snapshots.file_storage_snapshots_lookup : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "file_storage_snapshots_lookup_file_system_id" {
  description = "Map of file_system_id values across all file_storage_snapshots_lookup, keyed the same as var.file_storage_snapshots_lookup except keys with no file_system_id are omitted"
  value       = { for k, v in data.oci_file_storage_snapshots.file_storage_snapshots_lookup : k => v.file_system_id if v.file_system_id != null && length(v.file_system_id) > 0 }
}
output "file_storage_snapshots_lookup_filesystem_snapshot_policy_id" {
  description = "Map of filesystem_snapshot_policy_id values across all file_storage_snapshots_lookup, keyed the same as var.file_storage_snapshots_lookup except keys with no filesystem_snapshot_policy_id are omitted"
  value       = { for k, v in data.oci_file_storage_snapshots.file_storage_snapshots_lookup : k => v.filesystem_snapshot_policy_id if v.filesystem_snapshot_policy_id != null && length(v.filesystem_snapshot_policy_id) > 0 }
}
output "file_storage_snapshots_lookup_filter" {
  description = "Map of filter values across all file_storage_snapshots_lookup, keyed the same as var.file_storage_snapshots_lookup except keys with no filter are omitted"
  value       = { for k, v in data.oci_file_storage_snapshots.file_storage_snapshots_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "file_storage_snapshots_lookup_snapshots" {
  description = "Map of snapshots values across all file_storage_snapshots_lookup, keyed the same as var.file_storage_snapshots_lookup except keys with no snapshots are omitted"
  value       = { for k, v in data.oci_file_storage_snapshots.file_storage_snapshots_lookup : k => v.snapshots if v.snapshots != null && length(v.snapshots) > 0 }
}
output "file_storage_snapshots_lookup_state" {
  description = "Map of state values across all file_storage_snapshots_lookup, keyed the same as var.file_storage_snapshots_lookup except keys with no state are omitted"
  value       = { for k, v in data.oci_file_storage_snapshots.file_storage_snapshots_lookup : k => v.state if v.state != null && length(v.state) > 0 }
}

