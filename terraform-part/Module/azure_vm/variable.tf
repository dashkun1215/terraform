variable "vm_size" {
  default = ""
}
variable "rg_name" {
  default = ""
}

variable "region" {
  default = ""
}

variable "vm_name" {
  default = ""
}

variable "private_ip" {
  default = ""
}

variable "pub_ip_name" {
  default = ""
}

variable "network_interface_name" {
  default = ""
}

variable "vm_user" {
  default = "azureuser"
}

variable "ssh_pub_key" {
  default = ""
}
variable "subnet_id" {
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
  default = ""
}
