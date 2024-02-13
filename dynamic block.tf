https://medium.com/@amjad30nagori/what-is-dynamic-block-in-terraform-a-step-by-step-guide-b56b706edd47
variable "network_subnets" {

  type = map(string)

  description = "declaring subnets "
  default = {
    subnet1 = "10.0.1.0/24"
    subnet2 = "10.0.2.0/24"
    subnet3 = "10.0.3.0/24"
    
  }
  
}




resource "azurerm_resource_group" "vnetrg" {
  name = var.resource_group_name
  location = var.resource_group_location
tags = {
   Department = "It"
}
}

resource "azurerm_virtual_network" "vnet" {
name = var.vnetname
resource_group_name = azurerm_resource_group.vnetrg.name
location = azurerm_resource_group.vnetrg.location
address_space = ["10.0.0.0/16"]


dynamic "subnet" {
for_each = var.network_subnets
content {
   name           = subnet.key
    address_prefix = subnet.value
      
}
  }
}

