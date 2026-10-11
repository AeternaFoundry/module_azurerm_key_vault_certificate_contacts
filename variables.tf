variable "key_vault_certificate_contacts" {
  description = <<EOT
Map of key_vault_certificate_contacts, attributes below
Required:
    - key_vault_id
    - contact (block):
        - email (required)
        - name (optional)
        - phone (optional)
EOT

  type = map(object({
    key_vault_id = string
    contact = list(object({
      email = string
      name  = optional(string)
      phone = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.key_vault_certificate_contacts : (
        length(v.contact) >= 1
      )
    ])
    error_message = "Each contact list must contain at least 1 items"
  }
}

