module "IAM" {




  source                = "./modules/IAM"
  iam_user              = "infra-deployer"
  iam_group             = "infra-admins"
  iam_policy_attachment = "arn:aws:iam::aws:policy/AmazonS3FullAccess"


}
