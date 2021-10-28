terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "terraform-uht-org"

    workspaces {
      name = "udemy-terraform-associate"
    }
  }
}

provider "aws" {
  region = "us-east-1"
  access_key = var.aws_access_key_id
  secret_key = var.aws_secret_access_key 
}

resource "aws_s3_bucket" "testbucket"{
    bucket_prefix = "testuht-"
    
}