resource "azurerm_resource_group" "rg" {
  name     = var.name
  location = var.location
  tags = var.tags
}

# data "azurerm_key_vault_secret" "tenant_id" {
#   name = "tenant-id"
#   vault_name = var.key_vault_name
# }

# data "azurerm_key_vault_secret" "client_id" {
#   name = "client-id"
#   vault_name = var.key_vault_name
# }

# data "azurerm_key_vault_secret" "client_secret" {
#   name = "client-secret"
#   vault_name = var.key_vault_name
# }

module "adf" {
  #source  = "git::ssh://github.com/duck-creek/DuckCreek.TerraformModule.adf.git//modules/adf?ref='feature/29268/update'"
  #source = "git::https://github.com/duck-creek/DuckCreek.TerraformModule.adf.git//modules/adf?ref=feature/29268/update"
  source = "git@github.com:duck-creek/DuckCreek.TerraformModule.adf.git//modules/adf/?ref=feature/29268/update"
  #source = "./modules/adf"

  #version = "x.x.x"

  #client_name    = var.client_name
  df_name = var.data_factory_name
#   environment    = var.environment
  location       = azurerm_resource_group.rg.location
  #stack          = var.stack

  resource_group_name = azurerm_resource_group.rg.name

  #integration_runtime_type = "SelfHosted"
}
