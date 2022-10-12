resource "azurerm_virtual_network" "virtual_network" {
  name                = "vnet-${var.project}-${var.environment}-${var.location}"
  location            = var.location
  resource_group_name = var.resource_group_name
  address_space = [
    var.network_address_space
  ]

  tags = {
    Environment = var.environment
    Project     = var.project
  }

}

resource "azurerm_subnet" "aks_subnet" {
  name                 = "snet-aks-${var.project}-${var.environment}-${var.location}"
  resource_group_name  = var.resource_group_name
  virtual_network_name = azurerm_virtual_network.virtual_network.name
  address_prefixes = [
    var.aks_subnet_address_prefix
  ]
}

