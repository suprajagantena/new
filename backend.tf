 State Backend
terraform {
  backend "s3" {
    bucket  = "myvighbucket12345123"
 #   key     = "aws/${var.project}/${var.environment}"
   region  = "us-east-1"
   profile = "default"
   encrypt = "true"
    lock_table = "terraform"
  }
}
