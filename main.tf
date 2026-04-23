provider "azurerm" {
  features {}
}

module "vm" {
  source = "git::https://github.com/kulladech/terraform-azure-vm.git//modules/azure-vm?ref=v1.0.2"

  resource_group_name = "rg-demo"
  location            = "southeastasia"

  vm_name        = "vm-demo"
  admin_username = "azureuser"
  admin_password = "Password1234!"
}