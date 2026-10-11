variable "provider_instances" {
  description = <<EOT
Map of provider_instances, attributes below
Required:
    - authentication_type
    - name
    - recipient_profile_str
Optional:
    - comment
    - provider_config (block):
        - workspace_id (optional)
EOT

  type = map(object({
    authentication_type   = string
    name                  = string
    recipient_profile_str = string
    comment               = optional(string)
    provider_config = optional(object({
      workspace_id = optional(string)
    }))
  }))
}

