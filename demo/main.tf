provider "azurerm" {
  features {}
}



resource "azurerm_container_registry" "ncplcr" {
  name                     = "ncplcr"
  resource_group_name      = azurerm_resource_group.ncpl-rg.name
  location                 = azurerm_resource_group.ncpl-rg.location
  sku                      = "Basic"  # Change this to the desired SKU (e.g., "Basic", "Standard", "Premium")
  admin_enabled            = true     # Set to true if you want to enable admin access to the registry

}

