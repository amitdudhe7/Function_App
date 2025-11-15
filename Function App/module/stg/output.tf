output "stg_account_key_deatil" {
  value = {for keys, storage_account in azurerm_storage_account.stg: keys =>storage_account.id}
}

