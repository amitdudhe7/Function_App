rg_details = {
  "rg1" = {
    "name"   = "dev-rg1-022"
    location = "centralindia"
  }
}

stg_account_details = {
  "stg1" = {
    name                     = "devstg2002"
    resource_group_name      = "dev-rg1-022"
    location                 = "centralindia"
    account_tier             = "Standard"
    account_replication_type = "LRS"
  }
}

app_sp_details = {
  "sp1" = {
    name                = "dev-app-service-plan1"
    location            = "centralindia"
    resource_group_name = "dev-rg1-022"
    os_type             = "Linux"
    sku_name            = "B1"


  }
}

function_app_details = {
  "fapp1" = {
    name                 = "best-azure-functions"
    location             = "centralindia"
    resource_group_name  = "dev-rg1-022"
    app_service_plan_key  = "sp1"
    storage_account_name = "devstg2002"
    # storage_account_access_key = "stg1"
    storage_account_key = "stg1"
  }
}
