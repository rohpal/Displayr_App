terraform {

  required_version = ">= 0.13"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 2.0"
    }

  }
    backend "azurerm" {
    resource_group_name   = "displayr-rg"
    storage_account_name  = "displayraccount"
    container_name        = "newcontainer"
    key                   = "terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
}
