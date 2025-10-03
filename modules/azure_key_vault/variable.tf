variable "resource_group_name" {
  type        = string
  description = "The name of the resource group"
}

variable "location" {
  type        = string
  description = "Azure region"
}

variable "key_vault_name" {
  type        = string
  description = "Name of the Key Vault"
}
