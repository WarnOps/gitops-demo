output "aks_cluster_kube_config" {
  description = "A kube_config block."
  value       = azurerm_kubernetes_cluster.aks.kube_config
  sensitive   = true
}
