terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.79.0"
    }
  }
 backend "azurerm" {
    
    resource_group_name = "pt_akshatha_backend_RG"
    storage_account_name = "vmbackendstorage"
    container_name = "tfstate"
    key = "dev.terraform.tfstate"

  }

}

provider "azurerm" {
  features {}

}
