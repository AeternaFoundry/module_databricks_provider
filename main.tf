resource "databricks_provider" "provider_instances" {
  for_each = var.provider_instances

  authentication_type   = each.value.authentication_type
  name                  = each.value.name
  recipient_profile_str = each.value.recipient_profile_str
  comment               = each.value.comment

  dynamic "provider_config" {
    for_each = each.value.provider_config != null ? [each.value.provider_config] : []
    content {
      workspace_id = provider_config.value.workspace_id
    }
  }
}

