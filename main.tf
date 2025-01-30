resource "azurerm_resource_group" "myrg01" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_mssql_server" "mssqlserver01" {
  name                         = var.sql_server_name
  resource_group_name          = azurerm_resource_group.myrg01.name
  location                     = azurerm_resource_group.myrg01.location
  version                      = "12.0"
  administrator_login          = var.admin_username
  administrator_login_password = var.admin_password
}

resource "azurerm_mssql_database" "mssqldb" {

  depends_on = [azurerm_mssql_server.mssqlserver01]

  name                        = var.sql_database_name
  server_id                   = azurerm_mssql_server.mssqlserver01.id
  collation                   = "SQL_Latin1_General_CP1_CI_AS"
  sku_name                    = "GP_Gen5_2"
  license_type                = "LicenseIncluded"
  max_size_gb                 = 32
  min_capacity                = 0.5
  read_scale                  = false
  zone_redundant              = false
  auto_pause_delay_in_minutes = 60
  storage_account_type = "LRS"
  create_mode                 = "Default"
  enclave_type                = "Default"

  tags = {
    environment = "Production"
  }

  timeouts {
    create = "30m"
    update = "30m"
    delete = "30m"
  }


}