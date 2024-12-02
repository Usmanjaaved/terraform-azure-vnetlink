variable "link_name" {
  description = "Name of the Virtual Network Link"
  type        = string
}

variable "resource_group_name" {
  description = "Resource Group name for the Virtual Network Link"
  type        = string
}

variable "private_dns_zone_name" {
  description = "Name of the Private DNS Zone"
  type        = string
}

variable "virtual_network_id" {
  description = "The ID of the Virtual Network to link"
  type        = string
}
