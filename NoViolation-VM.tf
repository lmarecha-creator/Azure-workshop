provider "azurerm" {
  version = "=1.28.0"
}

resource "azurerm_resource_group" "resourceGroup" {
  name     = "resourceGroup"
  location = "West US"
}

resource "azurerm_virtual_machine" "VirtualMachine1" {
  name                  = "VirtualMachine1-vm"
  location              = "West US"
  resource_group_name   = "${azurerm_resource_group.resourceGroup.name}"
  network_interface_ids = ["someExistingNetworkInterface"]
  vm_size               = "Standard_DS1_v2"
  storage_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "16.04-LTS"
    version   = "latest"
  }
  storage_os_disk {
    name              = "myosdisk1"
    caching           = "ReadWrite"
    create_option     = "FromImage"
    managed_disk_type = "Standard_LRS"
  }
  os_profile {
    computer_name  = "hostname"
    admin_username = "testadmin"
    admin_password = "Password1234!"
  }
  os_profile_windows_config {
    provision_vm_agent        = true
    enable_automatic_upgrades = true
  }
  tags = {
    "key"   = "Name"
    "Value" = "shift-left"
  }
}