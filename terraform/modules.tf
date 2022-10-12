module "vnet" {
  source = "./modules/vnet"
  depends_on = [
    azurerm_resource_group.resource_group
  ]
  resource_group_name = azurerm_resource_group.resource_group.name
}

module "acr" {
  source = "./modules/acr"
  depends_on = [
    azurerm_resource_group.resource_group
  ]
  resource_group_name = azurerm_resource_group.resource_group.name
}

module "aks" {
  source = "./modules/aks"
  depends_on = [
    azurerm_resource_group.resource_group,
    module.vnet
  ]
  resource_group_name = azurerm_resource_group.resource_group.name
  subnet_id           = module.vnet.aks_subnet_id
}
