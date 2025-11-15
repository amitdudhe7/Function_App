module "rg_module" {
  source    = "../../module/rg"
  rg_detail = var.rg_details

}

module "stg_module" {
  depends_on = [ module.rg_module ]
  source             = "../../module/stg"
  stg_account_detail = var.stg_account_details
}

module "sp_module" {
  depends_on = [ module.rg_module ]
  source        = "../../module/service-plan"
  app_sp_detail = var.app_sp_details
}

module "fapp_module" {
  depends_on = [ module.rg_module,module.stg_module,module.sp_module ]
  source              = "../../module/function-app"
  function_app_detail = var.function_app_details
  storage_account_id  = module.stg_module.stg_account_key_deatil
  app_sp_id           = module.sp_module.app_sp_id
}