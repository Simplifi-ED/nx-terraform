resource "azurerm_resource_group" "rg" {
  name     = var.name
  location = var.location
  tags     = merge({ "deployedby" : "module" }, var.tags)
}
