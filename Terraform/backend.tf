terraform {
  backend "s3" {
    bucket         = "k-canzater-terraform-state"
    key            = "terraform/aws-infra-automation.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "terraform-locks"
    kms_key_id     = "arn:aws:kms:us-east-1:586794467243:key/c9943898-a5c5-4f41-8c05-687088f1b181"

  }
}
