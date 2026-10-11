variable "media_services_stream_cdn_configs_lookup" {
  description = <<EOT
Map of media_services_stream_cdn_configs_lookup, attributes below
Required:
    - distribution_channel_id
Optional:
    - display_name
    - state
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    distribution_channel_id = string
    display_name            = optional(string)
    state                   = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

