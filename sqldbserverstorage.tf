resource "azurerm_mssql_server" "sqlserv" {
  name                         = "mysqlserver09"
  resource_group_name          = azurerm_resource_group.rg.name
  location                     = azurerm_resource_group.rg.location
  version                      = "12.0"
  administrator_login          = "4dm1n157r470r"
  administrator_login_password = "4-v3ry-53cr37-p455w0rd"

}


resource "azurerm_storage_account" "strogeaccount" {
  name                = "mystorageprod"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  account_tier        = "Standard"
  account_replication_type = "LRS"

}

resource "azurerm_mssql_database" "mydb" {
  name           = "my-msdb"
  server_id      = azurerm_mssql_server.sqlserv.id

  
  

  tags = {
    enviorment = "prod"
  }

  # prevent the possibility of accidental data loss
  lifecycle {
    prevent_destroy = true
  }
}
