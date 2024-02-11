resource "azurerm_resource_group" "rg" {

name = var.rgname
location = var.location


}

resource "azurerm_resource_group" "rg1" {

name = "rgs"
location = "UK South"   

}

resource "azurerm_virtual_network" "vm1" {
    name = var.vnname
    resource_group_name = azurerm_resource_group.rg.name
    location = azurerm_resource_group.rg.location
    address_space = [ "10.0.0.0/16" ]
  
}


resource "azurerm_subnet" "subnet1" {
    name = var.subnet
    virtual_network_name = azurerm_virtual_network.vm1
    resource_group_name = azurerm_resource_group.rg.name
    address_prefixes =["10.0.2.0/24"]
  
}
resource "azurerm_network_security_group" "nsg1" {
    name = var.nsg
    resource_group_name = azurerm_resource_group.rg.name
    location = azurerm_resource_group.rg.location

    security_rule {


    name = "nsgrules"
    priority = 101
    direction = "Inbound"
    access = "allow"
    protocol = "Tcp"
    source_port_range = "*"
    destination_port_range = "*"
    source_address_prefix = "*"
    destination_address_prefix = "*"
    }
}

resource "azurerm_subnet_network_security_group_association" "subnetassociate" {
  
    subnet_id = azurerm_subnet.subnet1
    network_security_group_id = azurerm_network_security_group.nsg1
}

resource "azurerm_network_interface" "nic1" {
  name                = var.nic
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name

  ip_configuration {
    name                          = "nic-configuration"
    subnet_id                     = azurerm_subnet.subnet1.id
    private_ip_address_allocation = "Dynamic"
  }
}

resource "azurerm_network_interface_security_group_association" "nicinterface" {
  network_interface_id      = azurerm_network_interface.nic1
  network_security_group_id = azurerm_network_security_group.nsg1.id
}


resource "azurerm_linux_virtual_machine" "vm1" {
  name                  = var.vmname
  resource_group_name   = azurerm_resource_group.rg.name
  location              = azurerm_resource_group.rg.location
  size                  = "Standard_DS1_v2"
  admin_username        = "adminuser"
  admin_password        = "Password1234!"
  network_interface_ids = [azurerm_network_interface.nic1.id]

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "16.04-LTS"
    version   = "latest"
  }
}
    


