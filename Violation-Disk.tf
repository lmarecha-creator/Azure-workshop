provider "azurerm" {
	version = "=1.28.0"
}

resource "azurerm_resource_group" "resourceGroup" {
	name     = "resourceGroup"
	location = "West US"
}

resource "azurerm_managed_disk" "OSDisk" {
  	name                 = "OSDisk"
  	location             = "West US 2"
 	resource_group_name  = "${azurerm_resource_group.resourceGroup.name}"
  	storage_account_type = "Standard_LRS"
  	create_option        = "Empty"
  	disk_size_gb         = "1"

  	os_type 			   = "Linux"
  	encryption_settings{
  		enabled = false
  	}
}

resource "azurerm_managed_disk" "DataDisk" {
  	name                 = "DataDisk"
  	location             = "West US 2"
 	resource_group_name  = "${azurerm_resource_group.resourceGroup.name}"
  	storage_account_type = "Standard_LRS"
  	create_option        = "Empty"
  	disk_size_gb         = "1"

  	encryption_settings{
  		enabled = false
  	}
}