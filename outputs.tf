output "st_access_key" {
  value = azurerm_storage_account.rg-st1.primary_access_key
sensitive = true
}