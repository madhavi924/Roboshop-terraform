terraform {
  backend "s3" {
    bucket = "terraform-s3b1"
    key = "bath/to/my/key"
    region = "us-east-1"
  }
}