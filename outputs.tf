output "azurerm_container_app_url" {
  value = azurerm_container_app.example.latest_revision_fqdn
}
