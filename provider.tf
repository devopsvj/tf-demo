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

resource "aws_instance" "my-tf-ec2-1" {
  ami           = "ami-0c94855ba95c71c99"
  instance_type = "t2.nano"
  tags = {
    Name     = "my-tf-ec2-1"
    Owner    = "devopstf"
    Dept     = "TF Learning"
    Location = "Remote"
    Source   = "terraform local"
    created_by = "IaC"
  }
}
resource "aws_instance" "my-tf-ec2-2" {
  ami           = "ami-0c94855ba95c71c99"
  instance_type = "t2.micro"
  tags = {
    Name  = "my-tf-ec2-2"
    Owner = "devopstf"
    Dept  = "TF Learning"
    Source  = "terraform local"
    created_by = "IaC"
  }
}

resource "aws_iam_user" mycountindiam {
  name = "iamuser.${count.index}"
  count = 2
  path = "/home/"
  tags = {
      Name = "mycountindiam.${count.index}"
      Dept = "TF Learning"
      created_by = "IaC"
  }
}