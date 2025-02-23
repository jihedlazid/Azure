terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"      
    }
    azuread = {
      source = "hashicorp/azuread"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "xxx-xxx-xxx-xxx-xxxxxxxx"
}
