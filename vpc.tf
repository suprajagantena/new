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

resource "aws_subnet" "dev-subnet-private-1" {
    vpc_id = "aws_vpc.dev.id"
    cidr_block = "10.0.2.0/16"
    map_public_ip_on_launch = "true" 
  
}

resource "aws_subnet" "dev-subnet-private-2" {
    vpc_id = "aws_vpc.dev.id"
    cidr_block = "10.0.3.0/16"
    map_public_ip_on_launch = "true" 
  
}

resource "aws_vpc" "qa" {
  cidr_block       = "10.0.0.0/18"
  instance_tenancy = "dedicated"

  tags = {
    Name = "qa"
  }
}

resource "aws_subnet" "qa-subnet-public-1" {
    vpc_id = "aws_vpc.qa.id"
    cidr_block = "10.0.1.0/18"
    map_public_ip_on_launch = "true" 
  
}

resource "aws_subnet" "qa-subnet-private-1" {
    vpc_id = "aws_vpc.qa.id"
    cidr_block = "10.0.2.0/18"
    map_public_ip_on_launch = "true" 
  
}

resource "aws_subnet" "qa-subnet-private-2" {
    vpc_id = "aws_vpc.qa.id"
    cidr_block = "10.0.3.0/18"
    map_public_ip_on_launch = "true" 
  
}

  resource "aws_vpc" "prd" {
  cidr_block       = "10.0.0.0/24"
  instance_tenancy = "dedicated"

  tags = {
    Name = "prd"
  }
}
resource "aws_subnet" "prd-subnet-public-1" {
    vpc_id = "aws_vpc.prd.id"
    cidr_block = "10.0.1.0/24"
    map_public_ip_on_launch = "true" 
  
}

resource "aws_subnet" "prd-subnet-private-1"
    vpc_id = "aws_vpc.prd.id"
    cidr_block = "10.0.2.0/24"
    map_public_ip_on_launch = "true" 
  
}

resource "aws_subnet" "prd-subnet-private-2"
    vpc_id = "aws_vpc.prd.id"
    cidr_block = "10.0.3.0/24"
    map_public_ip_on_launch = "true" 
  
}
