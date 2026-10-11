data "oci_file_storage_snapshots" "file_storage_snapshots_lookup" {
  for_each = var.file_storage_snapshots_lookup

  compartment_id                = each.value.compartment_id
  file_system_id                = each.value.file_system_id
  filesystem_snapshot_policy_id = each.value.filesystem_snapshot_policy_id
  state                         = each.value.state

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

