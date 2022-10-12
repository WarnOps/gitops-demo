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

variable "sku" {
  description = "ACR Conatiner SKU."
  type        = string
  default     = "Basic"
}
