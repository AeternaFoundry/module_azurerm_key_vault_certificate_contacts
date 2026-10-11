output "key_vault_certificate_contacts_id" {
  description = "Map of id values across all key_vault_certificate_contacts, keyed the same as var.key_vault_certificate_contacts"
  value       = { for k, v in azurerm_key_vault_certificate_contacts.key_vault_certificate_contacts : k => v.id if v.id != null && length(v.id) > 0 }
}
output "key_vault_certificate_contacts_contact" {
  description = "Map of contact values across all key_vault_certificate_contacts, keyed the same as var.key_vault_certificate_contacts"
  value       = { for k, v in azurerm_key_vault_certificate_contacts.key_vault_certificate_contacts : k => v.contact if v.contact != null && length(v.contact) > 0 }
}
output "key_vault_certificate_contacts_key_vault_id" {
  description = "Map of key_vault_id values across all key_vault_certificate_contacts, keyed the same as var.key_vault_certificate_contacts"
  value       = { for k, v in azurerm_key_vault_certificate_contacts.key_vault_certificate_contacts : k => v.key_vault_id if v.key_vault_id != null && length(v.key_vault_id) > 0 }
}

