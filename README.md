# acre-terraform

Use the latest "azurerm" Terraform provider to deploy
Azure Cache for Redis Enterprise (ACRE)

- _Tenant_
  - _Subscription_
    - _Service Principal_
    - **Resource Group**
      - **Storage Account**
      - **VNET**
        - **Subnet**
      - **Redis Enterprise Cluster**
      - **Private Link**
        - Between subnet and cluster

## Prerequisites

### Secrets

1. Tenant ID
2. Subscription ID
3. Service Principal
   1. Client ID
    2. Client Secret
    
### Tools

1. Terraform CLI 0.14.1

## Getting started

```bash
  git clone https://github.com/redisgeek/acre-terraform
  cd acre-terraform
  terraform init
```
The output should include:
```text
  Terraform has been successfully initialized!
```
```bash
terraform plan
terraform apply
```

## Cleanup

Remove the resources that were created.

```bash
terraform destroy
```
