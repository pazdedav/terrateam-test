provider "azurerm" {
  features {}
}

terraform {
  backend "azurerm" {
    resource_group_name  = "terrateam-demo-state-rg" # Replace with your resource group name
    storage_account_name = "terrateamteststate"      # Replace with your storage account name
    container_name       = "terrateam-state"     # Replace with your container name
    key                  = "terraform.tfstate"       # Path to the state file in the container
  }
}

resource "azurerm_resource_group" "example" {
  name     = var.resource_group_name
  location = var.resource_group_location
}
