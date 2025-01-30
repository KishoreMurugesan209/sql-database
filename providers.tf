terraform {
  required_version = ">= 1.0.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 4.0.0"
    }

    random = {
      source  = "hashicorp/random"
      version = ">= 3.0.0"
    }

    azapi = {
      source  = "Azure/azapi"
      version = "0.1.0"
    }

    azuread = {
      source  = "hashicorp/azuread"
      version = ">= 1.0.0"
    }
  }
}

provider "azurerm" {
  subscription_id = var.subscription_id
  features {
  }
}