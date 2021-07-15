[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
[![MIT License][license-shield]][license-url]

# ACRE-TERRAFORM

This is a template to get started with the 'azurerm_redis_enterprise_cluster' resource
available in the 'azurerm' provider with Terraform.

- _Tenant_
  - _Subscription_
    - **Resource Group**
      - **Storage Account**
        - **Storage Container**
      - **VNET**
        - **Subnet**
      - **Redis Enterprise Cluster**
      - **Private Link connecting subnet and cluster**

The RediSearch module will be included.
A private link, vnet and subnet connect to the instance.
The public endpoint will be disabled.

## [Getting Started](#getting-started) | [About](#about-the-project) | [License](#license)

## Getting Started

### Prerequisites

1.  [Terraform](https://terraform.io]) [CLI](https://terraform.io/downloads.html)
2.  [Azure CLI](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli)

### Step 1. Getting Started

Login to Azure using the Azure CLI

```bash
az login
```
>Login with a Service Principal will also work
 
Login using an Azure Service Principal

```bash
az login --service-principal --username APP_ID --tenant TENANT_ID --password [password || /path/to/cert]
```

### Step 2: Clone the repository

```bash
git clone https://github.com/redis-developer/acre-terraform
```

### Step 3: Initialize the repository

```bash
cd acre-terraform
terraform init
```
>The output should include: ```Terraform has been successfully initialized```

### Step 4: Optionally, modify the variables

The default variables deploy the smallest 'E10' instance into the 'East US' region.
Changes can be made by updating the ```variables.tf``` file.


### Step 5: Verify the plan

The 'plan' output will show you everything being created by the template.

```bash
terraform plan
```
>The plan step does not make any changes in Azure


### Step 6: Apply the plan

When the plan looks good, 'apply' the template.

```bash
terraform apply
```

### Step 7: Connect using generated output

Connecting to this instance will have to be done from within the subnet that was created.
Only clients within the subnet can access the instance via the private link.
The access key is sensitive, so viewing the outputs must be requested specifically.

```bash
terraform output redisgeek_config
```
> Example output:
```
{
"hostname" = "redis-developer-8jy4.eastus.redisenterprise.cache.azure.net"
"access_key" = "DQYABC3uRMyDguE1236Xkvv3TprUcqBWTRkfgOPjs82Y="
"port" = "10000"
}
```

### Step 8: Optionally, Cleanup

Remove the resources that were created.

```bash
terraform destroy
```

## About The Project

The cluster, deployed across 3-AZs, will have a 99.99 SLA that is financially backed by Azure.
There are no "preview" features or modules included in this template.
Deployment using a private endpoint is typical for production workloads.
The storage account and storage container are there for exporting/importing RDB files.

### See Also

* [ACRE-TERRAFORM-SIMPLE](https://github.com/redis-developer/acre-terraform)
* [Redis Developer](https://developer.redislabs.com/create/azure/)

### Built With

* [Terraform](https://terraform.io)

### Contributing

Pull-requests are welcomed!

## License

Distributed under the MIT License. See `LICENSE` for more information.

[contributors-shield]: https://img.shields.io/github/contributors/redis-developer/acre-terraform.svg?style=for-the-badge
[contributors-url]: https://github.com/redis-developer/acre-terraform/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/redis-developer/acre-terraform.svg?style=for-the-badge
[forks-url]: https://github.com/redis-developer/acre-terraform/network/members
[stars-shield]: https://img.shields.io/github/stars/redis-developer/acre-terraform.svg?style=for-the-badge
[stars-url]: https://github.com/redis-developer/acre-terraform/stargazers
[issues-shield]: https://img.shields.io/github/issues/redis-developer/acre-terraform.svg?style=for-the-badge
[issues-url]: https://github.com/redis-developer/acre-terraform/issues
[license-shield]: https://img.shields.io/github/license/redis-developer/acre-terraform.svg?style=for-the-badge
[license-url]: https://github.com/redis-developer/acre-terraform/blob/main/LICENSE