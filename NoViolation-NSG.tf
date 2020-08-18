provider "azurerm" {
  version = "=1.28.0"
}

resource "azurerm_resource_group" "resourceGroup" {
  name     = "resourceGroup"
  location = "West US"
}

resource "azurerm_network_security_group" "NSG-portConfiguration" {
  name                = "NSG-portConfiguration"
  location            = "West US"
  resource_group_name = "${azurerm_resource_group.resourceGroup.name}"

  security_rule {
    name                       = "NSG-portConfiguration-rule"
    priority                   = 100
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_address_prefix      = "*"
    source_port_range          = 80
    destination_port_range     = 80
  }
}

resource "azurerm_network_security_group" "NSG-unrestrictedInboundAccess" {
  name                = "NSG-unrestrictedInboundAccess"
  location            = "West US"
  resource_group_name = "${azurerm_resource_group.resourceGroup.name}"

  security_rule {
    name                       = "NSG-unrestrictedInboundAccess-rule"
    priority                   = 101
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "*"
    source_address_prefix      = "*"
    source_port_range          = 80
    destination_port_range     = 80
  }
}

resource "azurerm_network_security_group" "NSG-UnrestrictedRDPAccess" {
  name                = "NSG-UnrestrictedRDPAccess"
  location            = "West US"
  resource_group_name = "${azurerm_resource_group.resourceGroup.name}"

  security_rule {
    name                       = "NSG-UnrestrictedRDPAccess-rule"
    priority                   = 102
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_address_prefix      = "*"
    source_port_range          = 80
    destination_port_range     = 80
  }
}

resource "azurerm_network_security_group" "NSG-UnrestrictedSSHAccess" {
  name                = "NSG-UnrestrictedSSHAccess"
  location            = "West US"
  resource_group_name = "${azurerm_resource_group.resourceGroup.name}"

  security_rule {
    name                       = "NSG-UnrestrictedSSHAccess-rule"
    priority                   = 103
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_address_prefix      = "*"
    source_port_range          = 80
    destination_port_range     = 80
  }
}

resource "azurerm_network_security_group" "NSG-UnrestrictedTelnetAccess" {
  name                = "NSG-UnrestrictedTelnetAccess"
  location            = "West US"
  resource_group_name = "${azurerm_resource_group.resourceGroup.name}"

  security_rule {
    name                       = "NSG-UnrestrictedTelnetAccess-rule"
    priority                   = 104
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_address_prefix      = "*"
    source_port_range          = 80
    destination_port_range     = 80
  }
}

resource "azurerm_network_security_group" "NSG-UnrestrictedCIFSAccess" {
  name                = "NSG-UnrestrictedCIFSAccess"
  location            = "West US"
  resource_group_name = "${azurerm_resource_group.resourceGroup.name}"

  security_rule {
    name                       = "NSG-UnrestrictedCIFSAccess-rule"
    priority                   = 105
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_address_prefix      = "*"
    source_port_range          = 80
    destination_port_range     = 80
  }
}

resource "azurerm_network_security_group" "NSG-UnrestrictedDNSAccess" {
  name                = "NSG-UnrestrictedDNSAccess"
  location            = "West US"
  resource_group_name = "${azurerm_resource_group.resourceGroup.name}"

  security_rule {
    name                       = "NSG-UnrestrictedDNSAccess-rule"
    priority                   = 106
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_address_prefix      = "*"
    source_port_range          = 80
    destination_port_range     = 80
  }
}

resource "azurerm_network_security_group" "NSG-UnrestrictedFTPAccess" {
  name                = "NSG-UnrestrictedFTPAccess"
  location            = "West US"
  resource_group_name = "${azurerm_resource_group.resourceGroup.name}"

  security_rule {
    name                       = "NSG-UnrestrictedFTPAccess-rule"
    priority                   = 1047
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_address_prefix      = "*"
    source_port_range          = 80
    destination_port_range     = 80
  }
}

resource "azurerm_network_security_group" "NSG-UnrestrictedMongoDBAccess" {
  name                = "NSG-UnrestrictedMongoDBAccess"
  location            = "West US"
  resource_group_name = "${azurerm_resource_group.resourceGroup.name}"

  security_rule {
    name                       = "NSG-UnrestrictedMongoDBAccess-rule"
    priority                   = 108
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_address_prefix      = "*"
    source_port_range          = 80
    destination_port_range     = 80
  }
}

resource "azurerm_network_security_group" "NSG-UnrestrictedMSSQLAccess" {
  name                = "NSG-UnrestrictedMSSQLAccess"
  location            = "West US"
  resource_group_name = "${azurerm_resource_group.resourceGroup.name}"

  security_rule {
    name                       = "NSG-UnrestrictedMSSQLAccess-rule"
    priority                   = 109
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_address_prefix      = "*"
    source_port_range          = 80
    destination_port_range     = 80
  }
}

resource "azurerm_network_security_group" "NSG-UnrestrictedMSSQLAccessUDP" {
  name                = "NSG-UnrestrictedMSSQLAccessUDP"
  location            = "West US"
  resource_group_name = "${azurerm_resource_group.resourceGroup.name}"

  security_rule {
    name                       = "NSG-UnrestrictedMSSQLAccessUDP-rule"
    priority                   = 110
    direction                  = "Inbound"
    access                     = "Allow"
    source_address_prefix      = "*"
    protocol                   = "Udp"
    source_port_range          = 80
    destination_port_range     = 80
  }
}

resource "azurerm_network_security_group" "NSG-UnrestrictedMySQLAccess" {
  name                = "NSG-UnrestrictedMySQLAccess"
  location            = "West US"
  resource_group_name = "${azurerm_resource_group.resourceGroup.name}"

  security_rule {
    name                       = "NSG-UnrestrictedMySQLAccess-rule"
    priority                   = 111
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_address_prefix      = "*"
    source_port_range          = 80
    destination_port_range     = 80
  }
}

resource "azurerm_network_security_group" "NSG-UnrestrictedNetBIOSAccessUDP" {
  name                = "NSG-UnrestrictedNetBIOSAccessUDP"
  location            = "West US"
  resource_group_name = "${azurerm_resource_group.resourceGroup.name}"

  security_rule {
    name                       = "NSG-UnrestrictedNetBIOSAccessUDP-rule"
    priority                   = 112
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Udp"
    source_address_prefix      = "*"
    source_port_range          = 80
    destination_port_range     = 80
  }
}

resource "azurerm_network_security_group" "NSG-UnrestrictedNetBIOSAccess" {
  name                = "NSG-UnrestrictedNetBIOSAccess"
  location            = "West US"
  resource_group_name = "${azurerm_resource_group.resourceGroup.name}"

  security_rule {
    name                       = "NSG-UnrestrictedNetBIOSAccess-rule"
    priority                   = 113
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_address_prefix      = "*"
    source_port_range          = 80
    destination_port_range     = 80
  }
}

resource "azurerm_network_security_group" "NSG-UnrestrictedOracleAccess" {
  name                = "NSG-UnrestrictedOracleAccess"
  location            = "West US"
  resource_group_name = "${azurerm_resource_group.resourceGroup.name}"

  security_rule {
    name                       = "NSG-UnrestrictedOracleAccess-rule"
    priority                   = 114
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_address_prefix      = "*"
    source_port_range          = 80
    destination_port_range     = 80
  }
}

resource "azurerm_network_security_group" "NSG-UnrestrictedPostgreSQLAccess" {
  name                = "NSG-UnrestrictedPostgreSQLAccess"
  location            = "West US"
  resource_group_name = "${azurerm_resource_group.resourceGroup.name}"

  security_rule {
    name                       = "NSG-UnrestrictedPostgreSQLAccess-rule"
    priority                   = 115
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_address_prefix      = "*"
    source_port_range          = 80
    destination_port_range     = 80
  }
}

resource "azurerm_network_security_group" "NSG-UnrestrictedRPCSAccess" {
  name                = "NSG-UnrestrictedRPCAccess"
  location            = "West US"
  resource_group_name = "${azurerm_resource_group.resourceGroup.name}"

  security_rule {
    name                       = "NSG-UnrestrictedRPCAccess-rule"
    priority                   = 116
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_address_prefix      = "*"
    source_port_range          = 80
    destination_port_range     = 80
  }
}

resource "azurerm_network_security_group" "NSG-UnrestrictedSMTPAccess" {
  name                = "NSG-UnrestrictedSMTPAccess"
  location            = "West US"
  resource_group_name = "${azurerm_resource_group.resourceGroup.name}"

  security_rule {
    name                       = "NSG-UnrestrictedSMTPAccess-rule"
    priority                   = 117
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_address_prefix      = "*"
    source_port_range          = 80
    destination_port_range     = 80
  }
}

resource "azurerm_network_security_group" "NSG-UnrestrictedHTTPAccess" {
  name                = "NSG-UnrestrictedHTTPAccess"
  location            = "West US"
  resource_group_name = "${azurerm_resource_group.resourceGroup.name}"

  security_rule {
    name                       = "NSG-UnrestrictedHTTPAccess-rule"
    priority                   = 118
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_address_prefix      = "*"
    source_port_range          = 80
    destination_port_range     = 80
  }
}

resource "azurerm_network_security_group" "NSG-UnrestrictedVNCLAccess" {
  name                = "NSG-UnrestrictedVNCLAccess"
  location            = "West US"
  resource_group_name = "${azurerm_resource_group.resourceGroup.name}"

  security_rule {
    name                       = "NSG-UnrestrictedVNCLAccess-rule"
    priority                   = 119
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_address_prefix      = "*"
    source_port_range          = 80
    destination_port_range     = 80
  }
}

resource "azurerm_network_security_group" "NSG-UnrestrictedVNCSAccess" {
  name                = "NSG-UnrestrictedVNCSAccess"
  location            = "West US"
  resource_group_name = "${azurerm_resource_group.resourceGroup.name}"

  security_rule {
    name                       = "NSG-UnrestrictedVNCSAccess-rule"
    priority                   = 120
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_address_prefix      = "*"
    source_port_range          = 80
    destination_port_range     = 80
  }
}