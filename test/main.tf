module "module_test" {
  source                        = "../../terraform-azurerm-azure_nic"
  network_rg_name               = "test-rg"
  network_name                  = "test-vnet"
  subnet_name                   = "test-subnet"
  resource_group_name           = "test-rg-2"
  location_name                 = "eastus"
  enable_accelerated_networking = true
  enable_ip_forwarding          = true
  tags = {
    "test" = "test"
  }
}
