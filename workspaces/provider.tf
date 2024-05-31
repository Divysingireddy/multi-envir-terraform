terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.48.0"  
    }
  }
  backend "s3" {
    bucket = "divyas-remote-state"
    key    = "workspace-remote"
    region = "us-east-1"
    dynamodb_table = "divyas-locking"
  }
}

provider "aws" {
  region = "us-east-1"
}