resource "azurerm_resource_group" "example" {
  name     = "example-resources"
  location = "West Europe"
  }
  
resource "azurerm_public_ip" "example" {
    count = 3
  name                = var.IP_Names[count.index]
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example.location
  allocation_method   = "Static"

  tags = {
    environment = "Production"
  }
  }