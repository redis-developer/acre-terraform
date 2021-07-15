resource "azurerm_resource_group" "redisgeek" {
  name     = format("redisgeek-%s", random_string.resource_group_name.result)
  location = var.location
  tags     = merge(var.tags, { owner = data.azurerm_client_config.current.client_id })
}
