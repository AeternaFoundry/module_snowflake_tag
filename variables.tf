variable "tags" {
  description = <<EOT
Map of tags, attributes below
Required:
    - database
    - name
    - schema
Optional:
    - allowed_values
    - comment
    - masking_policies
    - no_allowed_values
    - ordered_allowed_values
    - propagate
    - on_conflict (block):
        - allowed_values_sequence (optional)
        - custom_value (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - read (optional)
        - update (optional)
EOT

  type = map(object({
    database               = string
    name                   = string
    schema                 = string
    allowed_values         = optional(set(string))
    comment                = optional(string)
    masking_policies       = optional(set(string))
    no_allowed_values      = optional(bool)
    ordered_allowed_values = optional(list(string))
    propagate              = optional(string)
    on_conflict = optional(object({
      allowed_values_sequence = optional(bool)
      custom_value            = optional(string)
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      read   = optional(string)
      update = optional(string)
    }))
  }))
}

