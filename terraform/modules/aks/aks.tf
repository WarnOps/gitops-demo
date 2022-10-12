resource "azurerm_kubernetes_cluster" "aks" {
  name                = "aks-${var.project}-${var.environment}-${var.location}"
  location            = var.location
  resource_group_name = var.resource_group_name
  dns_prefix          = "aks-${var.project}-${var.environment}-${var.location}"
  kubernetes_version  = var.kubernetes_version
  node_resource_group = "${var.resource_group_name}-nodes"

  default_node_pool {
    name           = "agentpool"
    node_count     = var.node_count
    vm_size        = var.vm_size
    vnet_subnet_id = var.subnet_id
    type           = "VirtualMachineScaleSets"
  }

  network_profile {
    load_balancer_sku = "standard"
    network_plugin    = "azure"
  }

  identity {
    type = "SystemAssigned"
  }

  tags = {
    Environment = var.environment
    Project     = var.project
  }

}
