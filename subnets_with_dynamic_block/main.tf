

#main.tf
resource "azurerm_resource_group" "rg" {
  for_each = var.resource_groups
  name     = each.value.name
  location = each.value.location

}

resource "azurerm_virtual_network" "vnet" {
  for_each            = var.vnets
  name                = each.value.name
  location            = azurerm_resource_group.rg[each.value.resource_group_name].location
  resource_group_name = azurerm_resource_group.rg[each.value.resource_group_name].name
  address_space       = each.value.address_space

  dynamic "subnet" {
    for_each = each.value.subnets
    content {
      name             = subnet.value.subnet_name
      address_prefixes = subnet.value.address_prefixes
    }
  }
}

#variables.tf
variable "resource_groups" {
  type = map(object({
    name       = string
    location   = string
    managed_by = string
    tags       = map(string)
  }))

}


variable "vnets" {
  type = map(object({
    name                = string
    address_space       = list(string)
    resource_group_name = string
    subnets = map(object({
      subnet_name      = string
      address_prefixes = list(string)
    }))
  }))
}