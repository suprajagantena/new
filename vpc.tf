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
  resource "aws_subnet" "dev" {
  vpc_id     = "${aws_vpc.dev.id}"
  cidr_block = "default"

  tags = {
    Name = "dev-pri-1"
  }
}
  
 resource "aws_subnet" "dev" {
  vpc_id     = "${aws_vpc.dev.id}"
  cidr_block = "default"

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
   
  resource "aws_subnet" "qa-pri-1" {
  vpc_id     = "${aws_vpc.qa.id}"
  cidr_block = "10.0.2.0/18"

  tags = {
    Name = "qa-pri-1"
  }
}
  
  resource "aws_subnet" "qa-pri-2" {
  vpc_id     = "${aws_vpc.qa.id}"
  cidr_block = "10.0.3.0/18"

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
  
  resource "aws_subnet" "prd-pri-1" {
  vpc_id     = "${aws_vpc.prd.id}"
  cidr_block = "10.0.2.0/24"

  tags = {
    Name = "prd-pri-1"
  }
}
  
  resource "aws_subnet" "prd-pri-2" {
  vpc_id     = "${aws_vpc.prd.id}"
  cidr_block = "10.0.3.0/24"

  tags = {
    Name = "prd-pri-2"
  }
}
