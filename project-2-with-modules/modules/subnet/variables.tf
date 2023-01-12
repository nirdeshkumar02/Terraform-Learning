variable "subnet_cidr_block" {
  type        = string
  description = "Please Provide the subnet cidr value"
}

variable "avail_zone" {
  type        = string
  description = "Please Provide the availiblity zone"
}

variable "env_prefix" {
  type        = string
  description = "Please Provide the environment Dev/Stage/Prod"
}

variable "vpc_id" {
  type        = string
  description = "Please Provide the vpc id"
}

variable "default_rtb_id" {
  type        = string
  description = "Please Provide the default rtb id"
}