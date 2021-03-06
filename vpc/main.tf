terraform {
  backend "s3" {
    bucket         = "bhs-terraform"
    region         = "us-east-1"
    profile        = "iamadmin-general"
    key            = "aws-bhs/vpc1"
    dynamodb_table = "terraform-locks"
  }
}
provider "aws" {
  version = "~> 3.0"
  region  = "us-east-1"
  profile = "iamadmin-general"
}
