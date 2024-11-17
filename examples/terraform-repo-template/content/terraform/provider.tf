terraform {
  required_version = ">=1.3"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.8.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "${{ values.backendRg }}"
    storage_account_name = "${{ values.backendSa }}"
    container_name       = "${{ values.backendContainer }}"
    key                  = "${{ values.backendKey }}"
  }
}

provider "azurerm" {
  features {}
}