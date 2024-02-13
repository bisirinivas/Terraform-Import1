resource "azurerm_resource_group" "rg" {

name = var.rgname
location = var.location


}

resource "azurerm_resource_group" "rg1" {

name = "rgs"
location = "UK South"   

}

resource "azurerm_virtual_network" "example" {
  name                = "exampleVnet"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  address_space       = ["10.0.0.0/16"]
}

resource "azurerm_subnet" "example" {
  count = 2
  name                 = "example-${count.index}"
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.example.name
  address_prefixes     = ["10.0.${count.index}.0/24"]
}





