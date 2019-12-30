provider "aws" {
  version = "~> 2.0"
  region  = "us-east-1"
}
resource "aws_vpc" "dev" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "dedicated"

  tags = {
    Name = "dev"
  }
  
 variable "public_subnet_cidr" {
    description = "CIDR for the Public Subnet"
    default = "10.0.0.0/16"
  }
}
variable "private_subnet_cidr" {
    description = "CIDR for the Public Subnet"
    default = "10.0.1.0/16"

  tags = {
    Name = "dev-pri-1"
  }
}
  
variable "private_subnet_cidr" {
    description = "CIDR for the Public Subnet"
    default = "10.0.2.0/16"

  tags = {
    Name = "dev-pri-2"
  }
}
  
}
resource "aws_vpc" "qa" {
  cidr_block       = "10.0.0.0/18"
  instance_tenancy = "dedicated"

  tags = {
    Name = "qa"
  }
}

 variable "public_subnet_cidr" {
    description = "CIDR for the Public Subnet"
    default = "10.0.0.0/18"
   
 variable "private_subnet_cidr" {
    description = "CIDR for the Public Subnet"
    default = "10.0.1.0/18

  tags = {
    Name = "qa-pri-1"
  }
}
  
 variable "private_subnet_cidr" {
    description = "CIDR for the Public Subnet"
    default = "10.0.2.0/18"

  tags = {
    Name = "qa-pri-2"
  }
}
  resource "aws_vpc" "prd" {
  cidr_block       = "10.0.0.0/24"
  instance_tenancy = "dedicated"

  tags = {
    Name = "prd"
  }
}

   variable "public_subnet_cidr" {
    description = "CIDR for the Public Subnet"
    default = "10.0.0.0/24"
  
  variable "private_subnet_cidr" {
    description = "CIDR for the Public Subnet"
    default = "10.0.1.0/24"

  tags = {
    Name = "prd-pri-1"
  }
}
  
  variable "private_subnet_cidr" {
    description = "CIDR for the Public Subnet"
    default = "10.0.2.0/24"

  tags = {
    Name = "prd-pri-2"
  }
}
