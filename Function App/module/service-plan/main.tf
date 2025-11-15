resource "azurerm_service_plan" "app_sp" {
  for_each            = var.app_sp_detail
  name                = each.value.name
  resource_group_name = each.value.resource_group_name
  location            = each.value.location
  os_type             = each.value.os_type
  sku_name            = each.value.sku_name
}
