variable "project" {
  description = "Project to be deployed."
  type        = string
  default     = "gitops"
}

variable "environment" {
  description = "Environment to be deployed."
  type        = string
  default     = "dev"
}

variable "location" {
  description = "Azure Region which to deploy to."
  type        = string
  default     = "centralus"
}

variable "resource_group_name" {
  description = "Resource Group to deploy to."
  type        = string
}

variable "kubernetes_version" {
  description = "Kubernetes Version to be deployed."
  type        = string
  default     = "1.24.3"
}

variable "node_count" {
  description = "Number of nodes in node pool."
  type        = number
  default     = 1
}

variable "vm_size" {
  description = "Virtual Machine Size in node pool."
  type        = string
  default     = "Standard_D2_v2"
}

variable "subnet_id" {
  description = "Resource ID of the Subnet for Kubernetes"
  type        = string
}
