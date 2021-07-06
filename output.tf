output "pip_ids" {
  description = "The ids of Public IPs created"
  value       = azurerm_public_ip.pip.*.id
}

output "pip_names" {
  description = "The names of Public IPs created"
  value       = azurerm_public_ip.pip.*.name
}

output "pip_addresses" {
  description = "The names of Public IPs created"
  value       = azurerm_public_ip.pip.*.ip_address
}
