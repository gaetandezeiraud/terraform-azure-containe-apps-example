resource "azurerm_resource_group" "example" {
  name     = "terraform-resources"
  location = var.primary_region
}

resource "azurerm_container_app_environment" "example" {
  name                = "Example-Environment"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
}
