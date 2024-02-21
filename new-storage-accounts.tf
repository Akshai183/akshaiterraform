resource "azurerm_storage_account" "akshaistr001" {
  count                    = 6 # 0,1,2
  name                     = "akshaistr001${count.index + 1}"
  resource_group_name      = azurerm_resource_group.akshaiterraform.name
  location                 = azurerm_resource_group.akshaiterraform.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    environment = var.environment
  }
}