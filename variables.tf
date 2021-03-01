variable "client_id" {
  description = "Service Principal to use (az ad sp create-for-rbac ...)"
  sensitive = true
}

variable "client_secret" {
  description = "Client Secret for Service Principal"
  sensitive = true
}

variable "acre_sku" {
  type = string
  default = "Enterprise_E10-2"
}

variable "azure_redis_enterprise_database_clustering_policy" {
  type = string
  default = "EnterpriseCluster"
}

variable "subscription_id" {
  type = string
}

variable "tenant_id" {
  type = string
}

variable "location" {
  type = string
  default = "East US"
}

variable "cloud_name" {
  description = "The Azure cloud environment to use. Available values at https://www.terraform.io/docs/providers/azurerm/#environment"
  default     = "public"
  type        = string
}

variable "tags" {
  description = "Key/value tags to assign to all resources."
  default     = {}
  type        = map(string)
}
