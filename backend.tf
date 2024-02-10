terraform {
  backend "azurerm" {
    resource_group_name  = "Centric_Rg"
    storage_account_name = "terraformsto"
    container_name       = "tfstatecontainer"
    key                  = "prod.terraform.tfstat"
  }
}