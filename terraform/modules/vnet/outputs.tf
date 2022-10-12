output "aks_subnet_id" {
    description = "Subnet ID for AKS Cluster"
    value = azurerm_subnet.aks_subnet.id
}