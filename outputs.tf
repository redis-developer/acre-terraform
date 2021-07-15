locals {
  redisgeek_config = {
    hostname   = azurerm_redis_enterprise_cluster.redisgeek.hostname
    access_key = azurerm_redis_enterprise_database.redisgeek.primary_access_key
    port       = "10000"
  }
}

output "redisgeek_config" {
  value     = local.redisgeek_config
  sensitive = true
}
