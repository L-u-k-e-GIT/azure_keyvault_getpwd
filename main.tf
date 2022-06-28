

data "azurerm_key_vault_secret" "pwd" {
  #provider = azurerm.shared
  name         = var.MD_SECRET
  key_vault_id = var.MD_VAULT_ID
}

output "secret_value" {
  value     = data.azurerm_key_vault_secret.pwd.value
  #sensitive = true
}


variable "MD_SECRET" {
  description = "Secret Name"
  type        = string
  default     = ""
}

variable "MD_VAULT_ID" {}