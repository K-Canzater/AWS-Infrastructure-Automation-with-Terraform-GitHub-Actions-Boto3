module "IAM" {




  source                = "./modules/IAM"
  iam_user              = "infra-deployer"
  iam_group             = "infra-admins"
  iam_policy_attachment = "arn:aws:iam::aws:policy/AmazonS3FullAccess"


}


module "S3" {


  source            = "./modules/S3"
  bucket_name       = "cloudinfra-dev-kc"
  enable_versioning = true

}

module "VPC" {

  source                   = "./modules/VPC"
  cidr_block_vpc           = "10.0.0.0/16"
  cidr_block_subnet        = "10.0.0.0/24"
  availability_zone_subnet = "us-east-1a"
  myip                     = "207.213.57.120/32"


}
