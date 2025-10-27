
resource "azurerm_resource_group" "rg" {
  for_each = var.rg_names_map

  name     = each.key
  location = each.value
  managed_by = "created by Nitesh Rao"
  tags = {
    environment = "dev"
    team        = "platform"
  }

}

variable "rg_names_map" {}
  
