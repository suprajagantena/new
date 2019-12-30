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
  
  resource "aws_subnet" "dev-pub" {
  vpc_id     = "${aws_vpc.dev.id}"
  cidr_block = "10.0.1.0/16"

  tags = {
    Name = "dev-pub"
  }
}
  resource "aws_subnet" "dev-pri1" {
  vpc_id     = "${aws_vpc.dev.id}"
  cidr_block = "10.0.2.0/16"

  tags = {
    Name = "dev-pri1"
  }
}
  
  resource "aws_subnet" "dev-pri2" {
  vpc_id     = "${aws_vpc.dev.id}"
  cidr_block = "10.0.3.0/16"

  tags = {
    Name = "dev-pri2"
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

 resource "aws_subnet" "qa-pub" {
  vpc_id     = "${aws_vpc.qa.id}"
  cidr_block = "10.0.1.0/18"

  tags = {
    Name = "qa-pub"
  }
}
  resource "aws_subnet" "dev-pri1" {
  vpc_id     = "${aws_vpc.qa.id}"
  cidr_block = "10.0.2.0/18"

  tags = {
    Name = "qa-pri1"
  }
}
  
  resource "aws_subnet" "dev-pri2" {
  vpc_id     = "${aws_vpc.qa.id}"
  cidr_block = "10.0.3.0/16"

  tags = {
    Name = "qa-pri2"
  }
}
resource "aws_vpc" "prd" {
  cidr_block       = "10.0.0.0/24"
  instance_tenancy = "dedicated"

  tags = {
    Name = "prd"
  }
}

 resource "aws_subnet" "prd-pub" {
  vpc_id     = "${aws_vpc.prd.id}"
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "prd-pub"
  }
}
  resource "aws_subnet" "prd-pri1" {
  vpc_id     = "${aws_vpc.prd.id}"
  cidr_block = "10.0.2.0/24"

  tags = {
    Name = "prd-pri1"
  }
}
  
  resource "aws_subnet" "prd-pri2" {
  vpc_id     = "${aws_vpc.prd.id}"
  cidr_block = "10.0.3.0/24"

  tags = {
    Name = "prd-pri2"
  }
}
