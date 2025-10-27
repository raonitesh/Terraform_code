terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.47.0"
    }
  }

backend "azurerm" {
    resource_group_name  = "rg-ashwini"
    storage_account_name = "storagestates"
    container_name       = "devtfstate"
    key                  = "nits.tfstate"
  }
  
}


provider "azurerm" {
  features {}
  subscription_id = "b4235c62-725e-4da6-9d12-296ccb04cb57"
}