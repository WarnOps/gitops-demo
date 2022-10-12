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

variable "network_address_space" {
  description = "Address Space for Virtual Network."
  type        = string
  default     = "10.1.0.0/24"
}

variable "aks_subnet_address_prefix" {
  description = "Address Prefix for AKS Subnet"
  type        = string
  default     = "10.1.0.0/26"
}