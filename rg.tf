resource "azurerm_resource_group" "akshaiterraform" {
  name     = var.rg_name
  location = var.location
}
