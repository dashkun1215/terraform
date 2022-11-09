module "azure_rg" {
  source = "../Module/azure_rg"
  rg_name = var.rg_name
  region = var.region
}
module "azure_network" {
  depends_on = [module.azure_rg]
  source = "../Module/azure_network"
  virtual_network_name = var.virtual_network_name
  rg_name = var.rg_name
  subnet_name = var.subnet_name
  region = var.region
}

data "azurerm_key_vault" "terrakv" {
  name                = var.pass_key_vault_name
  resource_group_name = var.exc_rg_name
}

data "azurerm_key_vault_secret" "username" {
  name = var.vm_user_name
  key_vault_id = data.azurerm_key_vault.terrakv.id
}

data "azurerm_key_vault_secret" "password" {
  name = var.pass_secret_name
  key_vault_id = data.azurerm_key_vault.terrakv.id
}

module "azure_vm1" {
  depends_on = [module.azure_rg]
  source      = "../Module/azure_vm"
  vm_user = data.azurerm_key_vault_secret.username.value
  ssh_pub_key = data.azurerm_key_vault_secret.password.value
  subnet_id = module.azure_network.subnet_id
  pub_ip_name = var.pub_ip1_name
  network_interface_name = var.network_interface1_name
  vm_name = var.vm1_name
  rg_name = var.rg_name
  region  = var.region
  vm_size = var.master_vm_size
  private_ip = var.private_ip1

  image_publisher = var.image_publisher
  image_offer     = var.image_offer
  image_sku       = var.image_sku
  image_version   = var.image_version
}

module "azure_vm2" {
  depends_on = [module.azure_rg]
  source      = "../Module/azure_vm"
  vm_user = data.azurerm_key_vault_secret.username.value
  ssh_pub_key = data.azurerm_key_vault_secret.password.value
  subnet_id = module.azure_network.subnet_id
  pub_ip_name = var.pub_ip2_name
  network_interface_name = var.network_interface2_name
  vm_name = var.vm2_name
  rg_name = var.rg_name
  region  = var.region
  vm_size = var.slave_vm_size
  private_ip = var.private_ip2

  image_publisher = var.image_publisher
  image_offer     = var.image_offer
  image_sku       = var.image_sku
  image_version   = var.image_version
}

module "azure_vm3" {
  depends_on = [module.azure_rg]
  source      = "../Module/azure_vm"
  vm_user = data.azurerm_key_vault_secret.username.value
  ssh_pub_key = data.azurerm_key_vault_secret.password.value
  subnet_id = module.azure_network.subnet_id
  pub_ip_name = var.pub_ip3_name
  network_interface_name = var.network_interface3_name
  vm_name = var.vm3_name
  rg_name = var.rg_name
  region  = var.region
  vm_size = var.slave_vm_size
  private_ip = var.private_ip3

  image_publisher = var.image_publisher
  image_offer     = var.image_offer
  image_sku       = var.image_sku
  image_version   = var.image_version
}
