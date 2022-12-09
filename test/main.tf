module "module_test" {
  source          = "../../terraform-azurerm-azure_nic"
  network_rg_name = "test-rg"
  network_name    = "test-vnet"
  subnet_name     = "test-subnet"
  tags = {
    "test" = "test"
  }
}
