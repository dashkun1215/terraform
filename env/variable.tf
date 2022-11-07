variable "virtual_network_name" {
  default = ""
}

variable "rg_name" {
  default = ""
}

variable "subnet_name" {
  default = ""
}

variable "pub_ip_name" {
  default = ""
}

variable "network_interface_name" {
  default = ""
}

variable "region" {
  default = "West Europe"
}

variable "vm_name" {
  default = ""
}

variable "vm_user" {
  default = "azureuser"
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
