resource "azurerm_resource_group" "rg" {

  name     = var.rgname
  location = var.location

}

resource "azurerm_resource_group" "rg1" {

  name     = "rgs"
  location = "UK South"

}


resource "azurerm_virtual_network" "vm" {
  name                = var.vmname
  resource_group_name = var.rgname
  location            = var.location
  address_space       = ["10.0.0.0/16"]

}