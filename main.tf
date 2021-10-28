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
  access_key = var.access_key
  secret_key = var.secret_key
}

resource "aws_s3_bucket" "testbucket"{
    bucket_prefix = "testuht-"
    
}