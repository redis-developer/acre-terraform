resource "azurerm_resource_group" "redisgeek" {
  name     = format("redisgeek-%s", random_string.resource_group_name.result)
  location = var.location

  tags = merge(var.tags, { name = "redisgeek" })
}
