provider "aws" {
  region = "eu-west-1"
}


terraform {
  backend "s3" {
    bucket         = "manu-s3bucket-march03"
    key            = "globalstate/s3/terraform.tfstate"
    region         = "eu-west-1"
    dynamodb_table = "manu-march03-dblocks"
    encrypt        = true
  }
}
