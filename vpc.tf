provider "aws" {
  access_key = "access_key"
  secret_key = "secret_key"

  version = "~> 2.0"
  region  = "us-east-1"
}
resource "aws_vpc" "dev" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "dedicated"

  tags = {
    Name = "dev"
  }
  }
  
 resource "aws_subnet" "dev-subnet-public-1" {
    vpc_id = "aws_vpc.dev.id"
    cidr_block = "10.0.1.0/16"
    map_public_ip_on_launch = "true" 
  
}
resource "aws_vpc" "qa" {
  cidr_block       = "10.0.0.0/18"
  instance_tenancy = "dedicated"

  tags = {
    Name = "qa"
  }
}

  resource "aws_vpc" "prd" {
  cidr_block       = "10.0.0.0/24"
  instance_tenancy = "dedicated"

  tags = {
    Name = "prd"
  }
}
