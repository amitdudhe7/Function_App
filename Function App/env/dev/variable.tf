variable "rg_details" {
  type = map(map(string))
}

variable "stg_account_details" {
  type = map(object({
    name                     = string
    resource_group_name      = string
    location                 = string
    account_tier             = string
    account_replication_type = string
  }))
}
variable "app_sp_details" {
  type = map(object({
    name                = string
    location            = string
    resource_group_name = string
    os_type             = string
    sku_name            = string

  }))

}

variable "function_app_details" {
  type = map(object({
    name                       = string
    location                   = string
    resource_group_name        = string
    app_service_plan_key       = string
    storage_account_name       = string
    # storage_account_access_key = string
    storage_account_key        = string
  }))
}


