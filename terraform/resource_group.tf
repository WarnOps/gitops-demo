# Create new Resource Group
resource "azurerm_resource_group" "resource_group" {
  name     = lower("rg-${var.project}-${var.environment}-${var.location}")
  location = var.location
  tags = {
    Environment = var.environment
    Project     = var.project
  }
}
