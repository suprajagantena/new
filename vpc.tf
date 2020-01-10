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
   tags = {
    Name = "dev-pub"
  }
   depends_on = [aws_vpc.dev]
  
}


resource "aws_instance" "web" {
  ami           = "ami-00068cd7555f543d5"
  instance_type = "t2.micro"
  subnet_id = "aws_subnet.dev-subnet-public-1.id"
  tags = {
    Name = "instance_dev_pub"
  }
 depends_on = [aws_vpc.dev] 
}

resource "aws_subnet" "dev-subnet-private-1" {
    vpc_id = ${"aws_vpc.dev.id"}
    cidr_block = "10.0.2.0/16"
    map_public_ip_on_launch = "true" 
  tags = {
    Name = "dev-pri1"
  }
 depends_on = [aws_vpc.dev]
  
}

resource "aws_subnet" "dev-subnet-private-2" {
    vpc_id = ${"aws_vpc.dev.id"}
    cidr_block = "10.0.3.0/16"
    map_public_ip_on_launch = "true" 
  depends_on = [aws_vpc.dev]
    tags = {
    Name = "dev-pri2"
  }
  
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
  depends_on = [aws_vpc.qa]
    tags = {
    Name = "qa-pub"
  }
  
}

resource "aws_subnet" "qa-subnet-private-1" {
    vpc_id = "aws_vpc.qa.id"
    cidr_block = "10.0.2.0/18"
    map_public_ip_on_launch = "true" 
    depends_on = [aws_vpc.qa]
   tags = {
    Name = "qa-pri1"
  }
  
}

resource "aws_subnet" "qa-subnet-private-2" {
    vpc_id = "aws_vpc.qa.id"
    cidr_block = "10.0.3.0/18"
    map_public_ip_on_launch = "true" 
    depends_on = [aws_vpc.qa]
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
resource "aws_subnet" "prd-subnet-public-1" {
    vpc_id = "aws_vpc.prd.id"
    cidr_block = "10.0.1.0/24"
    map_public_ip_on_launch = "true" 
    depends_on = [aws_vpc.prd]
   tags = {
    Name = "prd-pub"
  }
  
}

resource "aws_subnet" "prd-subnet-private-1" {
    vpc_id = "aws_vpc.prd.id"
    cidr_block = "10.0.2.0/24"
    map_public_ip_on_launch = "true" 
   depends_on = [aws_vpc.prd]
   tags = {
    Name = "prd-pri1"
  }
  
}

resource "aws_subnet" "prd-subnet-private-2" {
    vpc_id = "aws_vpc.prd.id"
    cidr_block = "10.0.3.0/24"
    map_public_ip_on_launch = "true" 
   depends_on = [aws_vpc.prd]
   tags = {
    Name = "prd-pri2"
  }
  
}
