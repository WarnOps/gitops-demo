#ACR Resource
resource "azurerm_container_registry" "acr" {
  name                = "acr${var.project}${var.environment}${var.location}"
  resource_group_name = var.resource_group_name
  location            = var.location
  sku                 = var.sku
  admin_enabled       = false

  tags = {
    Environment = var.environment
    Project     = var.project
  }
}
