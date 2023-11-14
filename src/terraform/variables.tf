terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.79.0"
    }
  }
   backend "azurerm" {
    resource_group_name  = "friday-demo-rg"
    storage_account_name = "sttfstatemgt01"
    container_name       = "tfstate"
    key                  = "dev.terraform.tfstate"
  }
}

provider "azurerm" {
  features {}

}
