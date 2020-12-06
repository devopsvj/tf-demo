# resource "aws_iam_user" mycountindiamgit {
#   name = "iamuser.${count.index}"
#   count = 2
#   path = "/home/"
#   tags = {
#       Name = "mycountindiamgit.${count.index}"
#       Dept = "TF Learning"
#       created_by = "IaC"
#   }
# }
