resource "azurerm_resource_group" "rg" {

name = var.rgname
location = var.location

}

resource "azurerm_resource_group" "rg1" {

name = "rgs"
location = "UK South"

}