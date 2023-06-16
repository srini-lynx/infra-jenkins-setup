## Defining Variables for Terraform Configuration Files

variable "image" {
  type = string
  description = "The Image to use for Spining Linux Server having Jenkins Installed"
 
}

variable "server_name" {
  type = string
  description = "Droplet Name"
}

variable "server_region" {
  type = string
  description = "Server is hosted on region"
}

variable "image_size" {
  type = string
  description = "Size for the Image (disk size)"
}
