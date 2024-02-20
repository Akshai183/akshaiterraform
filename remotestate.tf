terraform {
  backend "azurerm" {
    resource_group_name  = "terraformstate"
    storage_account_name = "akshaifreestate"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }
}
