# Terraform Module: Azure Private DNS Zone Virtual Network Link

This Terraform module creates an Azure Private DNS Zone Virtual Network Link using the `azurerm_private_dns_zone_virtual_network_link` resource.

## Requirements

- Terraform 0.12 or higher
- Azure Provider (`azurerm` version >= 2.0)

## Module Inputs

| Name                   | Description                                                   | Type   | Default | Required |
|------------------------|---------------------------------------------------------------|--------|---------|----------|
| `link_name`             | Name of the Virtual Network Link                              | string | N/A     | Yes      |
| `resource_group_name`   | The name of the Resource Group for the Virtual Network Link    | string | N/A     | Yes      |
| `private_dns_zone_name` | Name of the Private DNS Zone                                  | string | N/A     | Yes      |
| `virtual_network_id`    | The ID of the Virtual Network to link                          | string | N/A     | Yes      |

## Module Outputs

| Name  | Description                             |
|-------|-----------------------------------------|
| `id`  | ID of the Virtual Network Link          |

## Example Usage

### Basic Example

```hcl
module "vnet_link" {
  source                 = "./modules/vnet_link"
  link_name              = "vnet-link-${var.prefix}"
  resource_group_name    = module.azurerm_resource_group.resource_group_name
  private_dns_zone_name  = module.private_dns_zone.name
  virtual_network_id     = module.virtual_network.id

  depends_on = [module.private_dns_zone]
}


Input Variables
link_name: Defines the name of the virtual network link. Example: "vnet-link-${var.prefix}"
resource_group_name: This should be the name of the resource group where the link is to be created.
private_dns_zone_name: The name of the Private DNS Zone that the virtual network will be linked to.
virtual_network_id: The ID of the virtual network to link to the private DNS zone.
Outputs
The module will output the following:

id: The ID of the created Virtual Network Link.
