#Create IAM User
resource "aws_iam_user" "user" {
  name = var.iam_user

  tags = {
    Project     = "IAM-Automation"
    Environment = "dev"
  }

}


#Create IAM Group
resource "aws_iam_group" "group" {
  name = var.iam_group

}


#Attach IAM user to IAM group
resource "aws_iam_group_membership" "membership" {
  name  = "${var.iam_group}-membership"
  users = [aws_iam_user.user.name]
  group = aws_iam_group.group.name

}


#Attach policy to IAM group
#Attach Policy
resource "aws_iam_group_policy_attachment" "policy_attached" {
  group      = aws_iam_group.group.name
  policy_arn = var.iam_policy_attachment

}
