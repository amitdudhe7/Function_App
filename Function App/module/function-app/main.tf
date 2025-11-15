resource "azurerm_linux_function_app" "function_app" {

  for_each                   = var.function_app_detail
  name                       = each.value.name
  resource_group_name        = each.value.resource_group_name
  location                   = each.value.location
  storage_account_name       = each.value.storage_account_name
  storage_account_access_key = var.storage_account_id[each.value.storage_account_key]
  service_plan_id            = var.app_sp_id[each.value.app_service_plan_key]

  site_config {}
}

