
#First recommended method for for_each with list
resource "azurerm_resource_group" "rg" {
  for_each = toset(["rg-01", "rg-02", "rg-03", "rg-04", "rg-05"])
  name     = each.key
  location = "eastus"
  managed_by = "created by Nitesh Rao"
  tags = {
    environment = "dev"
    team        = "platform"
  }

}

#Second recommended method for for_each with list
# resource "azurerm_resource_group" "rg" {
#   for_each = toset(var.rg_names)
#   name     = each.value
#   location = "eastus"
#   managed_by = "created by Nitesh Rao"
#   tags = {
#     environment = "dev"
#     team        = "platform"
#   }

# }

# variable "rg_names" {
#   type    = list(string)
#   default = ["rg-01", "rg-02", "rg-03", "rg-04", "rg-05"]
# }