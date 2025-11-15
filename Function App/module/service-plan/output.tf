output "app_sp_id" {
  value = {for keys, sp in azurerm_service_plan.app_sp: keys =>sp.id }
}