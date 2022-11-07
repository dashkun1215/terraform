
resource "azurerm_virtual_network" "vn" {
  name                = var.virtual_network_name
  address_space       = ["10.0.0.0/16"]
  location            = var.region
  resource_group_name = var.rg_name
}

resource "azurerm_subnet" "sbn" {
  name                 = var.subnet_name
  resource_group_name  = var.rg_name
  virtual_network_name = azurerm_virtual_network.vn.name
  address_prefixes     = ["10.0.2.0/24"]
}

resource "azurerm_public_ip" "ip1" {
  name                = var.pub_ip_name
  resource_group_name = var.rg_name
  location            = var.region
  allocation_method   = "Dynamic"
}

resource "azurerm_network_interface" "nic1" {
  name                = var.network_interface_name
  location            = var.region
  resource_group_name = var.rg_name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.sbn.id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = azurerm_public_ip.ip1.id
  }
}
