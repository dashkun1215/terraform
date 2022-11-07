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
  pub_ip_name = var.pub_ip_name
  network_interface_name = var.network_interface_name
  region = var.region

}

module "azure_vm" {
  source      = "../Module/azure_vm"
  ssh_pub_key = file("~/.ssh/id_rsa.pub")
  nic_id      = [
    module.azure_network.nic_id,
  ]
  vm_name = var.vm_name
  rg_name = var.rg_name
  region  = var.region
  vm_user = var.vm_user

  image_publisher = var.image_publisher
  image_offer     = var.image_offer
  image_sku       = var.image_sku
  image_version   = var.image_version
}