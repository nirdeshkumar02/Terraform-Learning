variable "vpc_id" {
  type        = string
  description = "Please Provide the vpc id"
}

variable "my_ip" {
  type        = string
  description = "Please Provide the Ip allow to access the server"
}

variable "env_prefix" {
  type        = string
  description = "Please Provide the environment Dev/Stage/Prod"
}

variable "image_name" {
  type        = string
  description = "Please Provide the image-name regex to identify the image"
}

variable "subnet_id" {
  type        = string
  description = "Please Provide the subnet id through which server will connect"
}

variable "public_key_location" {
  type        = string
  description = "Please Provide the public key location"
}

variable "instance_type" {
  type        = string
  description = "Please Provide the value of instance type"
}

variable "avail_zone" {
  type        = string
  description = "Please Provide the availiblity zone"
}