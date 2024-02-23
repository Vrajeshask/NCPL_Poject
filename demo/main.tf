provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "ncpl-rg" {
  name     = "ncpl-rg"
  location = "eastus"
}

resource "azurerm_container_registry" "ncplcr" {
  name                     = "ncplcr"
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location
  sku                      = "Basic"  # Change this to the desired SKU (e.g., "Basic", "Standard", "Premium")
  admin_enabled            = true     # Set to true if you want to enable admin access to the registry

  # Network rule to allow access only from specific IP addresses or ranges
  network_rule_set {
    default_action = "Deny"
    
    ip_rule {
      action = "Allow"
      ip_range = "YOUR_PUBLIC_IP_OR_RANGE"  # Replace with your IP address or range
    }
  }
}

