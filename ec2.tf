resource "aws_instance" "my-tf-ec2-git1" {
  ami           = "ami-0c94855ba95c71c99"
  instance_type = "t2.nano"
  tags = {
    Name     = "my-tf-ec2-git1"
    Owner    = "devopstf"
    Dept     = "TF Learning"
    Location = "Remote"
    Source   = "terraform local"
    created_by = "IaC"
  }
}
resource "aws_instance" "my-tf-ec2-git2" {
  ami           = "ami-0c94855ba95c71c99"
  instance_type = "t2.micro"
  tags = {
    Name  = "my-tf-ec2-git2"
    Owner = "devopstf"
    Dept  = "TF Learning"
    Source  = "terraform local"
    created_by = "IaC"
  }
}

