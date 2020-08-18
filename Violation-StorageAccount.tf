provider "azurerm" {
	version = "=1.28.0"
}

resource "azurerm_resource_group" "test" {
	name     = "production"
	location = "West US"
}

resource "azurerm_storage_account" "testsa" {
	name                      = "storageaccountname"
	resource_group_name       = "${azurerm_resource_group.test.name}"
	location                  = "westus"
	account_tier              = "Standard"
	account_replication_type  = "GRS"

	enable_https_traffic_only = false
	enable_blob_encryption	  = false
	enable_file_encryption	  = false
	network_rules{
		default_action = "Allow"
		ip_rules	   = ["172.169.0.0/24"]
  	}
}