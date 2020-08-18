provider "azurerm" {
	version = "=1.28.0"
}

resource "azurerm_resource_group" "resourceGroup" {
	name     = "production"
	location = "West US"
}

resource "azurerm_sql_server" "sqlserver" {
  name                         = "sqlserver"
  resource_group_name          = "${azurerm_resource_group.resourceGroup.name}"
  location                     = "West US"
  version                      = "12.0"
  administrator_login          = "4dm1n157r470r"
  administrator_login_password = "4-v3ry-53cr37-p455w0rd"
}

resource "azurerm_sql_firewall_rule" "fwrule" {
  name                = "fwrule"
  resource_group_name = "${azurerm_resource_group.resourceGroup.name}"
  server_name         = "${azurerm_sql_server.sqlserver.name}"
  start_ip_address    = "0.0.0.0"
  end_ip_address      = "0.0.0.0"
}