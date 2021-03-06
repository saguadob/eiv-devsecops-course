resource "azurecaf_name" "slides" {
  name = "slides"
  resource_types = [
    "azurerm_resource_group",
    "azurerm_storage_account"
  ]
  suffixes    = ["eiv22"]
  clean_input = true
}

resource "azurerm_resource_group" "slides" {
  name     = azurecaf_name.slides.results.azurerm_resource_group
  location = var.location
}

resource "azurerm_storage_account" "slides" {
  name                = azurecaf_name.slides.results.azurerm_storage_account
  location            = var.location
  resource_group_name = azurerm_resource_group.slides.name

  account_tier             = "Standard"
  account_replication_type = "LRS"

  static_website {
    index_document = "index.html"
  }
}

resource "azurerm_role_assignment" "slides_data_owner" {
  scope                = azurerm_storage_account.slides.id
  role_definition_name = "Storage Blob Data Contributor"
  principal_id         = data.azurerm_client_config.current.object_id
  description          = "CI/CD automation data contributor role assignment"
}