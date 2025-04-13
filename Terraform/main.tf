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

# EC2
module "EC2" {

  source                = "./modules/EC2"
  iam_role_name         = "ec2-ssm-role"
  instance_profile_name = "ec2-ssm-profile"
  ami_id                = "ami-00a929b66ed6e0de6"
  instance_type         = "t2.micro"
  subnet_id             = "subnet-0d1c26c4a49adf178"
  security_group_id     = "sg-00913c4ea83601f21"
  ec2_name              = "dev-ec2-instance"

}
