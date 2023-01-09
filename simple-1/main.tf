# Telling to Terraform which provider is required and what version of it is required.
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>4.0.0"
    }
  }
}

# Calling the Provider and adding requierd details to provider needs to access the account.
provider "aws" {
  # Here You can define the hardocode creds at initial stage of learning but not the best practice. 
  # Take Creds from the environment variable.
  region     = "us-east-1"
  access_key = ""
  secret_key = ""
}

# After Terraform init, Terraform download the provider and all API is accessible and available from local.

# Creating VPC with cidr block
resource "aws_vpc" "dev-vpc" {
  cidr_block = "10.0.0.0/16"
  tags = {
    "Name" = "dev-vpc"
  }
}

#  Taking refrence of above vpc id which is not yet created
resource "aws_subnet" "dev-subnet" {
  vpc_id     = aws_vpc.dev-vpc.id
  cidr_block = "10.0.0.0/24"
  availability_zone = "us-east-1a"
    tags = {
    "Name" = "dev-subnet"
  }
}

# Using Data-Source to query default vpc
data "aws_vpc" "existing-vpc" {
  default = true
}

variable "subnet_cidr" {
  description = "subnet cidr block"
  default = "10.0.30.0/24"
  type = string/list(string)/list(object({
    cidr_block = string
    name = string
  }))
}

# Refrencing of Data source to create another subnet in default vpc
resource "aws_subnet" "dev-subnet-1" {
  vpc_id     = data.aws_vpc.existing-vpc.id
  cidr_block = var.subnet_cidr # in case of list - var.subnet_cidr[0] # in case of list of object - var.subnet_cidr[0].cidr_block
  availability_zone = "us-east-1a"
    tags = {
    "Name" = var.subnet_cidr[0].name
  }
}

# Generating Output
output "default-vpcId" {
  value = data.aws_vpc.existing-vpc.id
}