provider "aws" {
  version = "~> 2.0"
  access_key = "AKIATOUVDBKIM2ZSZ2QS"
 secret_key = "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"
  region  = "us-east-1"
}
resource "aws_vpc" "main" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "dedicated"

  tags = {
    Name = "main"
  }
}
