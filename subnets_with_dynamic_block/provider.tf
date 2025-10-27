terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.47.0"
    }
  }

  # backend "azurerm" {
  #   resource_group_name  = "rg-ashwini"
  #   storage_account_name = "storagestates"
  #   container_name       = "devtfstate"
  #   key                  = "nits.tfstate"
  # }

}


provider "azurerm" {
  features {}
  subscription_id = "19daee92-d877-4443-a867-a4e5a2b05fd3"
}