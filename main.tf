resource "snowflake_tag" "tags" {
  for_each = var.tags

  database               = each.value.database
  name                   = each.value.name
  schema                 = each.value.schema
  allowed_values         = each.value.allowed_values
  comment                = each.value.comment
  masking_policies       = each.value.masking_policies
  no_allowed_values      = each.value.no_allowed_values
  ordered_allowed_values = each.value.ordered_allowed_values
  propagate              = each.value.propagate

  dynamic "on_conflict" {
    for_each = each.value.on_conflict != null ? [each.value.on_conflict] : []
    content {
      allowed_values_sequence = on_conflict.value.allowed_values_sequence
      custom_value            = on_conflict.value.custom_value
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      read   = timeouts.value.read
      update = timeouts.value.update
    }
  }
}

