variable "public_key_path" {
  # Описание переменной
  description = "Path to the public key used for ssh access"
}

variable "app_disk_image" {
  description = "Disk image for reddit app"
  default     = "reddit-base"
}

variable "subnet_id" {
  description = "Subnets for modules"
}
