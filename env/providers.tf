terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0.2"
    }
  }
  required_version = ">= 1.1.0"
   backend "azurerm" {
        resource_group_name  = "terraform"
        storage_account_name = "terraform5tfstate"
        container_name       = "terraform"
        key                  = "dev/terraform.tfstate"
    }
}

provider "azurerm" {
  features {}
}