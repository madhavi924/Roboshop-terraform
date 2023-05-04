terraform {
  backend "s3" {
    bucket = "terraform-s3b1"
    key = "Roboshop/terraform.tfstate"
    region = "us-east-1"
  }
}