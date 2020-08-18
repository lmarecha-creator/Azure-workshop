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

  	enable_https_traffic_only = true
	enable_blob_encryption	  = true
	enable_file_encryption	  = true
	network_rules{
		default_action = "Deny"
		ip_rules	   = ["172.169.0.0/32"]
  	}
	tags = {
    	"key"   = "Name"
    	"Value" = "shift-left"
  	}
}