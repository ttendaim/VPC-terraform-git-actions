terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.31.0"
    }
  }



  backend "s3" {
    bucket = "terraform-remote-backend-project-s3"
    key    = "path/to/my/key"
    region = "eu-central-1"
  }
}


provider "aws" {
  region = "eu-central-1"
}
