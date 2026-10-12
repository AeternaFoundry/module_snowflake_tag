output "tags_id" {
  description = "Map of id values across all tags, keyed the same as var.tags except keys with no id are omitted"
  value       = { for k, v in snowflake_tag.tags : k => v.id if v.id != null && length(v.id) > 0 }
}
output "tags_allowed_values" {
  description = "Map of allowed_values values across all tags, keyed the same as var.tags except keys with no allowed_values are omitted"
  value       = { for k, v in snowflake_tag.tags : k => v.allowed_values if v.allowed_values != null && length(v.allowed_values) > 0 }
}
output "tags_comment" {
  description = "Map of comment values across all tags, keyed the same as var.tags except keys with no comment are omitted"
  value       = { for k, v in snowflake_tag.tags : k => v.comment if v.comment != null && length(v.comment) > 0 }
}
output "tags_database" {
  description = "Map of database values across all tags, keyed the same as var.tags except keys with no database are omitted"
  value       = { for k, v in snowflake_tag.tags : k => v.database if v.database != null && length(v.database) > 0 }
}
output "tags_fully_qualified_name" {
  description = "Map of fully_qualified_name values across all tags, keyed the same as var.tags except keys with no fully_qualified_name are omitted"
  value       = { for k, v in snowflake_tag.tags : k => v.fully_qualified_name if v.fully_qualified_name != null && length(v.fully_qualified_name) > 0 }
}
output "tags_masking_policies" {
  description = "Map of masking_policies values across all tags, keyed the same as var.tags except keys with no masking_policies are omitted"
  value       = { for k, v in snowflake_tag.tags : k => v.masking_policies if v.masking_policies != null && length(v.masking_policies) > 0 }
}
output "tags_name" {
  description = "Map of name values across all tags, keyed the same as var.tags except keys with no name are omitted"
  value       = { for k, v in snowflake_tag.tags : k => v.name if v.name != null && length(v.name) > 0 }
}
output "tags_no_allowed_values" {
  description = "Map of no_allowed_values values across all tags, keyed the same as var.tags except keys with no no_allowed_values are omitted"
  value       = { for k, v in snowflake_tag.tags : k => v.no_allowed_values if v.no_allowed_values != null }
}
output "tags_on_conflict" {
  description = "Map of on_conflict values across all tags, keyed the same as var.tags except keys with no on_conflict are omitted"
  value       = { for k, v in snowflake_tag.tags : k => one(v.on_conflict) if v.on_conflict != null && length(v.on_conflict) > 0 }
}
output "tags_ordered_allowed_values" {
  description = "Map of ordered_allowed_values values across all tags, keyed the same as var.tags except keys with no ordered_allowed_values are omitted"
  value       = { for k, v in snowflake_tag.tags : k => v.ordered_allowed_values if v.ordered_allowed_values != null && length(v.ordered_allowed_values) > 0 }
}
output "tags_propagate" {
  description = "Map of propagate values across all tags, keyed the same as var.tags except keys with no propagate are omitted"
  value       = { for k, v in snowflake_tag.tags : k => v.propagate if v.propagate != null && length(v.propagate) > 0 }
}
output "tags_schema" {
  description = "Map of schema values across all tags, keyed the same as var.tags except keys with no schema are omitted"
  value       = { for k, v in snowflake_tag.tags : k => v.schema if v.schema != null && length(v.schema) > 0 }
}
output "tags_show_output" {
  description = "Map of show_output values across all tags, keyed the same as var.tags except keys with no show_output are omitted"
  value       = { for k, v in snowflake_tag.tags : k => v.show_output if v.show_output != null && length(v.show_output) > 0 }
}

