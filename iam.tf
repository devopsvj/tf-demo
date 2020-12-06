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