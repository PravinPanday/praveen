output "id" {
  value = azurerm_network_interface.nic.id
}

output "name" {
  value = azurerm_network_interface.nic.name
} 
output "public_ip_address_id" {
  value = var.public_ip_address_id
}
