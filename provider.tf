terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

provider "aws" {
  version = "~> 3.0"
  profile = "default"
  region  = "us-east-1"
}
