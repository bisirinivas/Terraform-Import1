
resource "azurerm_kubernetes_cluster" "aks" {
  name                =  var.clustername 
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  dns_prefix          = var.dnsname  

  default_node_pool {
    name       = "default"
    node_count = 1
    vm_size    = "Standard_D2_v2"
  }
identity {
    type = "SystemAssigned"
}
}

/*
resource "azurerm_kubernetes_cluster_node_pool" "nodepool" {
  name                  =  var.nodpoolname  
  kubernetes_cluster_id = azurerm_kubernetes_cluster.aks.id
  vm_size               = "Standard_DS2_v2"
  node_count            = 1
}
*/
