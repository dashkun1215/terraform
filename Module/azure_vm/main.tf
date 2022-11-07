resource "azurerm_linux_virtual_machine" "vm1" {
  name                = var.vm_name
  resource_group_name = var.rg_name
  location            = var.region
  size                = var.vm_size
  admin_username      = var.vm_user
  network_interface_ids = var.nic_id

  admin_ssh_key {
    username   = var.vm_user
    public_key = var.ssh_pub_key
  }

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = var.image_publisher
    offer     = var.image_offer
    sku       = var.image_sku
    version   = var.image_version
  }
}