resource "azurerm_virtual_network" "redisgeek" {
  name                = format("redisgeek-%s", random_string.vnet_name.result)
  depends_on          = [azurerm_resource_group.redisgeek]
  resource_group_name = azurerm_resource_group.redisgeek.name
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.redisgeek.location
}
