module "module_test" {
  source                        = "../../terraform-azurerm-azure_nic"
  network_rg_name               = "test-rg"
  network_name                  = "test-vnet"
  subnet_name                   = "test-subnet"
  resource_group_name           = "test-rg"
  location_name                 = "eastus"
  enable_accelerated_networking = true
  enable_ip_forwarding          = true

  configurations = {
    0 = {
      allocation         = "Dynamic",
      version            = "IPv4",
      private_ip_address = "10.0.0.15"
    }
    1 = {
      allocation         = "Static",
      version            = "IPv4",
      private_ip_address = "10.0.0.20"
    }
  }

  tags = {
    "test" = "test"
  }
}
