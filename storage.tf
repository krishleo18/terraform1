resource "azurerm_resource_group" "rg-tf1" {
  name     = var.rg_name
  location = var.rglocation
}


resource "azurerm_storage_account" "rg-st1" {
  name                     = var.storageacname1
  resource_group_name      = azurerm_resource_group.rg-tf1.name
  location                 = azurerm_resource_group.rg-tf1.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    environment = "staging"
  }
}