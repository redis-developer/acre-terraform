resource "azurerm_redis_enterprise_database" "redisgeek" {
  name                = "default"
  resource_group_name = azurerm_resource_group.redisgeek.name
  cluster_id          = azurerm_redis_enterprise_cluster.redisgeek.id
  clustering_policy   = var.azure_redis_enterprise_database_clustering_policy
  module {
    name = "RediSearch"
  }
}
