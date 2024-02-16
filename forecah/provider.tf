terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.35.0"
    }
  }

  backend "s3" {
    bucket = "2512raju-remote"
    key    = "foreach"
    region = "us-east-1"
    dynamodb_table = "raju-dynamodb"
  }
}

  provider "aws" {
    region = "us-east-1"
}