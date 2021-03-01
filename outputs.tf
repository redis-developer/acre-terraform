locals {
  redisgeek_config = {
    hostname = azurerm_redis_enterprise_cluster.redisgeek.hostname
  }
}

output "redisgeek_config" {
  value = jsonencode(local.redisgeek_config)
  sensitive = true
}
