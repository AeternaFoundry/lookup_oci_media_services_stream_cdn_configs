data "oci_media_services_stream_cdn_configs" "media_services_stream_cdn_configs_lookup" {
  for_each = var.media_services_stream_cdn_configs_lookup

  distribution_channel_id = each.value.distribution_channel_id
  display_name            = each.value.display_name
  state                   = each.value.state

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

