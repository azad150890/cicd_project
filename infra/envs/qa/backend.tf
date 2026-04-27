terraform {
  backend "azurerm" {
    resource_group_name  = "finops-poc-rg"
    storage_account_name = "stfinopsdataxxx"
    container_name       = "tfstate"
    key                  = "qa.tfstate"
  }
}