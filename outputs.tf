output "provider_instances_id" {
  description = "Map of id values across all provider_instances, keyed the same as var.provider_instances except keys with no id are omitted"
  value       = { for k, v in databricks_provider.provider_instances : k => v.id if v.id != null && length(v.id) > 0 }
}
output "provider_instances_authentication_type" {
  description = "Map of authentication_type values across all provider_instances, keyed the same as var.provider_instances except keys with no authentication_type are omitted"
  value       = { for k, v in databricks_provider.provider_instances : k => v.authentication_type if v.authentication_type != null && length(v.authentication_type) > 0 }
}
output "provider_instances_comment" {
  description = "Map of comment values across all provider_instances, keyed the same as var.provider_instances except keys with no comment are omitted"
  value       = { for k, v in databricks_provider.provider_instances : k => v.comment if v.comment != null && length(v.comment) > 0 }
}
output "provider_instances_name" {
  description = "Map of name values across all provider_instances, keyed the same as var.provider_instances except keys with no name are omitted"
  value       = { for k, v in databricks_provider.provider_instances : k => v.name if v.name != null && length(v.name) > 0 }
}
output "provider_instances_provider_config" {
  description = "Map of provider_config values across all provider_instances, keyed the same as var.provider_instances except keys with no provider_config are omitted"
  value       = { for k, v in databricks_provider.provider_instances : k => one(v.provider_config) if v.provider_config != null && length(v.provider_config) > 0 }
}
output "provider_instances_recipient_profile_str" {
  description = "Map of recipient_profile_str values across all provider_instances, keyed the same as var.provider_instances except keys with no recipient_profile_str are omitted"
  value       = { for k, v in databricks_provider.provider_instances : k => v.recipient_profile_str if v.recipient_profile_str != null && length(v.recipient_profile_str) > 0 }
  sensitive   = true
}

