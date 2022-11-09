variable "virtual_network_name" {
  default = ""
}

variable "rg_name" {
  default = ""
}

variable "exc_rg_name" {
  default = ""
}

variable "private_ip1" {
  default = ""
}

variable "private_ip2" {
  default = ""
}

variable "private_ip3" {
  default = ""
}

variable "pass_key_vault_name" {
  default = ""
}

variable "pass_secret_name" {
  default = ""
}

variable "vm_user_name" {
  default = ""
}

variable "master_vm_size" {
  default = "Standard_B2s"
}

variable "slave_vm_size" {
  default = "Standard_B1s"
}

variable "subnet_name" {
  default = ""
}

variable "pub_ip1_name" {
  default = ""
}

variable "pub_ip2_name" {
  default = ""
}

variable "pub_ip3_name" {
  default = ""
}

variable "network_interface1_name" {
  default = ""
}

variable "network_interface2_name" {
  default = ""
}

variable "network_interface3_name" {
  default = ""
}

variable "region" {
  default = "West Europe"
}

variable "vm1_name" {
  default = ""
}

variable "vm2_name" {
  default = ""
}

variable "vm3_name" {
  default = ""
}

# Image definition

variable "image_publisher" {
  default = ""
}

variable "image_offer" {
  default = ""
}

variable "image_sku" {
  default = ""
}

variable "image_version" {
  default = "latest"
}
