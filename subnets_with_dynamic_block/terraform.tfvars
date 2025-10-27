
#terraform.tfvars
# ✅ Resource Groups
resource_groups = {
  rg1 = {
    name       = "rg-nitesh-01"
    location   = "eastus"
    managed_by = "Nitesh Rao"
    tags = {
      business_unit = "dummy"
      cost_center   = "development1"
    }
  }
}

# ✅ Virtual Networks (with Subnets inside)
vnets = {
  vnet1 = {
    name                = "vnet-nitesh"
    address_space       = ["10.0.0.0/16"]
    resource_group_name = "rg1"

    subnets = {
      subnet1 = {
        subnet_name      = "nitesh-subnet1"
        address_prefixes = ["10.0.1.0/24"]
      }
      subnet2 = {
        subnet_name      = "nitesh-subnet2"
        address_prefixes = ["10.0.2.0/24"]
      }
    }
  }
}
