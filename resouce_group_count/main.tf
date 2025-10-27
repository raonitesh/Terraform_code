resource "azurerm_resource_group" "rg" {
  count = 5
  name     = "rg-${count.index}"
  location = "eastus"
managed_by          = "created by Nitesh Rao"
tags                = {
  environment = "dev"
  team       = "platform"
}
}

