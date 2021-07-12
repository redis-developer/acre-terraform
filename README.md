# acre-terraform

Use the latest "azurerm" Terraform provider to deploy
Azure Cache for Redis Enterprise (ACRE)

- _Tenant_
  - _Subscription_
    - _Service Principal_
    - **Resource Group**
      - **Storage Account**
        - **Storage Container**
      - **VNET**
        - **Subnet**
      - **Redis Enterprise Cluster**
      - **Private Link**
        - Between subnet and cluster

## Prerequisites

Login using an Azure Service Principal

```bash
az login --service-principal --username APP_ID --tenant TENANT_ID --password [password || /path/to/cert]
```
    
### Tools

1. Terraform CLI v1.0.1

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
Copy the variables template.
```bash
cp terraform.tfvars.example terraform.tfvars
```
Update terraform.tfvars with your [secrets](#secrets)
```bash
terraform plan
terraform apply
```

## Cleanup

Remove the resources that were created.

```bash
terraform destroy
```
