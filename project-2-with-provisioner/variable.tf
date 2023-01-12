variable "region_name" {
    type = string
    description = "Please Provide the region where you want to deploy the infra"
}

variable "vpc_cidr_block" {
    type = string
    description = "Please Provide the vpc cidr value"
}

variable "subnet_cidr_block" {
    type = string
    description = "Please Provide the subnet cidr value"
}

variable "avail_zone" {
    type = string
    description = "Please Provide the availiblity zone"
}

variable env_prefix {
    type = string
    description = "Please Provide the environment Dev/Stage/Prod"
}

variable my_ip {
    type = string
    description = "Please Provide the Ip allow to access the server"
}

variable instance_type {
    type = string
    description = "Please Provide the value of instance type"
}

variable public_key {
    type = string
    description = "Please Provide the public key location"
}

variable private_key {
    type = string
    description = "Please Provide the private key location"
}

