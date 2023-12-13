
output "client_config" {
  value = {
    tenant_id       = local.client_config.tenant_id
    subscription_id = local.client_config.subscription_id
    landingzone_key = local.client_config.landingzone_key
  }

}

output "global_settings" {
  value = local.global_settings
}

output "combined_objects" {
  value = {
    combined_objects_route_tables = local.combined_objects_route_tables
  }
}
