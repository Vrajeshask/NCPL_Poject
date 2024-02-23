provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "ncpl-demo" {
  name     = "ncpl-demo"
  location = "eastus"
}
