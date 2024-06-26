module "private_endpoint" {
  source   = "../../networking/private_endpoint"
  for_each = lookup(var.settings, "private_endpoints", {})

  resource_id         = azurerm_dashboard_grafana.dashboard.id
  name                = each.value.name
  location            = local.location
  resource_group_name = local.resource_group_name
  subnet_id           = can(each.value.subnet_id) || can(each.value.vnet_key) == false ? try(each.value.subnet_id, var.subnets[try(each.value.lz_key, var.client_config.landingzone_key)][each.value.subnet_key].id) : var.vnets[try(each.value.lz_key, var.client_config.landingzone_key)][each.value.vnet_key].subnets[each.value.subnet_key].id

  settings        = each.value
  global_settings = var.global_settings
  tags            = local.tags
  base_tags       = var.base_tags
  private_dns     = var.private_dns
  client_config   = var.client_config
}
