resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
  managed_by = var.managed_by
  tags = var.tags

}

variable "resource_group_name" {}

variable "location" {}

variable "managed_by" {}

variable "tags" {}