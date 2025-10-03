variable "location" {}

variable "rg_name" {}
variable "vnet_name" {}
variable "vnet_address_space" {
  default = ["10.0.0.0/16"]
}

variable "subnets" {
  description = "Map of subnet names and address prefixes"
  type = map(object({
    name             = string
    address_prefixes = list(string)
  }))
}

variable "nics" {
  description = "NIC configurations"
  type = map(object({
    name       = string
    subnet_key = string # must match a key in var.subnets
    public_ip_key   = string
  }))
}

variable "vms" {
  description = "VM configurations"
  type = map(object({
    name       = string
    nic_key    = string # must match a key in var.nics
    size       = string
    admin_user = string
    admin_pass = string
  }))
}

variable "public_ips" {
  description = "Public IP configurations"
  type = map(object({
    name              = string
    allocation_method = string
  }))
}

variable "key_vault_name" {}
  