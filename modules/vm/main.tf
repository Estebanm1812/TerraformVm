resource "azurerm_public_ip" "api" {
  name                ={$var.prefix}-api
  resource_group_name = azurerm_resource_group.arg.name
  location            = azurerm_resource_group.arg.location
  allocation_method   = "Static"

  tags = {
    environment = "staging"
  }
}
resource "azurerm_network_interface" "ani" {
  name                = {$var.prefix}-ani
  location            = azurerm_resource_group.arg.location
  resource_group_name = azurerm_resource_group.arg.name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.as.id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = azurerm_public_ip.api.id
  }
}
resource "azurerm_network_security_group" "ansg" {
  name                = {$var.prefix}-ansg
  location            = azurerm_resource_group.arg.location
  resource_group_name = azurerm_resource_group.arg.name

  security_rule {
        name                       = "SSH"
        priority                   = 1001
        direction                  = "Inbound"
        access                     = "Allow"
        protocol                   = "Tcp"
        source_port_range          = "*"
        destination_port_range     = "22"
        source_address_prefix      = "*"
        destination_address_prefix = "*"
    }
resource "azurerm_network_interface_security_group_association" "anisga" {
  network_interface_id      = azurerm_network_interface.ani.id
  network_security_group_id = azurerm_network_security_group.ansg.id
}