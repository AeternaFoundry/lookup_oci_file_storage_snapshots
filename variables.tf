variable "file_storage_snapshots_lookup" {
  description = <<EOT
Map of file_storage_snapshots_lookup, attributes below
Optional:
    - compartment_id
    - file_system_id
    - filesystem_snapshot_policy_id
    - state
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    compartment_id                = optional(string)
    file_system_id                = optional(string)
    filesystem_snapshot_policy_id = optional(string)
    state                         = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

