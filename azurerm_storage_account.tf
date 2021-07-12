resource "azurerm_storage_account" "redisgeek" {
  name                     = format("redisgeek%s", random_string.storage_account_name.result)
  resource_group_name      = azurerm_resource_group.redisgeek.name
  location                 = azurerm_resource_group.redisgeek.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}
