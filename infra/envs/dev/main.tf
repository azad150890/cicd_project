provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = "rg-dev"
  location = "CentralIndia"
}

resource "azurerm_service_plan" "plan" {
  name                = "plan-dev"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  os_type             = "Linux"
  sku_name            = "B1"
}
module "webapp" {
  source   = "../../modules/webapp"
  name     = "app-dev-xyz123"
  location = azurerm_resource_group.rg.location
  rg_name  = azurerm_resource_group.rg.name
  plan_id  = azurerm_service_plan.plan.id
  env      = "dev"
}