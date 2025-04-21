terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.86.1"
    }
  }

   backend "s3" {
    bucket = "nagaraj-state-remote"
    key    = "k8-eksctl"
    region = "us-east-1"
    dynamodb_table = "nagaraj-locking"
  }
}

provider "aws" {
  region = "us-east-1"
}